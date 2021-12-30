#!/bin/bash

CXX="gcc"
FLAGS="-Os -flto"
STRIP="strip a.out"

cd bai1
${CXX} ${FLAGS} bai1tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai2
${CXX} ${FLAGS} bai2tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai3
${CXX} ${FLAGS} bai3tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai4
${CXX} ${FLAGS} bai4tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai5
${CXX} ${FLAGS} bai5tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai6
${CXX} ${FLAGS} bai6tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai7
${CXX} ${FLAGS} bai7tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai8
${CXX} ${FLAGS} bai8tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai9
${CXX} ${FLAGS} bai9tu_8086tu.s -lm; ${STRIP}
cd ..

cd bai10
${CXX} ${FLAGS} bai10tu_8086tu.s -lm; ${STRIP}
cd ..