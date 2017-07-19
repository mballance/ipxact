#!/bin/sh

files="abstractionDefinition.xsd abstractor.xsd autoConfigure.xsd busDefinition.xsd"
files="$files busInterface.xsd catalog.xsd commonStructures.xsd component.xsd configurable.xsd"
files="$files constraints.xsd design.xsd designConfig.xsd file.xsd fileType.xsd generator.xsd"
files="$files identifier.xsd index.xsd memoryMap.xsd model.xsd port.xsd signalDrivers.xsd"
files="$files simpleTypes.xsd subInstances.xsd xml.xsd"

URL="http://www.accellera.org/XMLSchema/IPXACT/1685-2014/"

urls=""

rm -rf schema
mkdir schema
cd schema

for file in $files; do
	wget "${URL}/${file}"
done



