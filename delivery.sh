#!/bin/bash

RELEASE_NAME=75993-joao-antunes

rm -rf "$RELEASE_NAME/" "$RELEASE_NAME.zip"
mkdir -p $RELEASE_NAME
cp thesis/dissertation.pdf "$RELEASE_NAME/$RELEASE_NAME.pdf"
cp thesis-summary-format/thesis-summary.pdf "$RELEASE_NAME/$RELEASE_NAME-resumo.pdf"
zip "$RELEASE_NAME.zip" $RELEASE_NAME/*
