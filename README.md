# dotfiles

Este repositorio contiene mis archivos de configuración personal (dotfiles)  
para GNU/Linux. Está diseñado para automatizar la configuración de mi entorno  
de desarrollo y mantener la consistencia entre diferentes distribuciones.  

Son adecuados para usar en Trisquel, GuixSD y pureOS.  

## Gestión de enlaces simbólicos

Para gestionar los enlaces simbólicos utilizo GNU Stow.  

## Instalación

Clone el repositorio en su directorio $HOME y luego ejecute GNU stow.

```console
    cd ~
    git clone https://git.sobnix.ar/ferorge/dot-files/
	cd ~/dot-files/
	stow ./
```

## Licencia

dot-files se distribuye bajo la licencia GPLv3.
Consulte el fichero LICENSE para más detalles.
