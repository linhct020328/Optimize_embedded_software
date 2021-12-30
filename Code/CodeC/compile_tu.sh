#!/bin/bash

CXX="gcc"
FLAGS="-Os -flto"
STRIP="strip a.out"

cd bai1
${CXX} ${FLAGS} bai1.c -lm; ${STRIP}
cd ..

cd bai2
${CXX} ${FLAGS} bai2.c -lm; ${STRIP}
cd ..

cd bai3
${CXX} ${FLAGS} bai3.c -lm; ${STRIP}
cd ..

cd bai4
${CXX} ${FLAGS} bai4.c -lm; ${STRIP}
cd ..

cd bai5
${CXX} ${FLAGS} bai5.c -lm; ${STRIP}
cd ..

cd bai6
${CXX} ${FLAGS} bai6.c -lm; ${STRIP}
cd ..

cd bai7
${CXX} ${FLAGS} bai7.c -lm; ${STRIP}
cd ..

cd bai8
${CXX} ${FLAGS} bai8.c -lm; ${STRIP}
cd ..

cd bai9
${CXX} ${FLAGS} bai9.c -lm; ${STRIP}
cd ..

cd bai10
${CXX} ${FLAGS} bai10.c -lm; ${STRIP}
cd ..