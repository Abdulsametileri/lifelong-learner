package config

import (
	"github.com/k0kubun/pp"
	"github.com/spf13/viper"
)

type Config struct {
	Port int
}

func New(configPath, configName string) (*Config, error) {
	viperConfig, err := readConfig(configName, configPath)
	if err != nil {
		return nil, err
	}

	config := &Config{}
	if err := viperConfig.Unmarshal(&config); err != nil {
		return nil, err
	}

	return config, nil
}

func readConfig(configName, configPath string) (*viper.Viper, error) {
	v := viper.New()
	v.AddConfigPath(configPath)
	v.SetConfigName(configName)
	err := v.ReadInConfig()

	return v, err
}

func (c *Config) Print() {
	pp.Println(c)
}
