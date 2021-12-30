#!/bin/bash

CXX="gcc"
FLAGS="-Wall"

C1="./bai1"
C2="./bai2"
C3="./bai3"
C4="./bai4"
C5="./bai5"
C6="./bai6"
C7="./bai7"
C8="./bai8"
C9="./bai9"
C10="./bai10"

${CXX} ${FLAGS} -o ${C1}/bai1 ${C1}/bai1.c -lm

${CXX} ${FLAGS} -o ${C2}/bai2 ${C2}/bai2.c -lm

${CXX} ${FLAGS} -o ${C3}/bai3 ${C3}/bai3.c -lm

${CXX} ${FLAGS} -o ${C4}/bai4 ${C4}/bai4.c -lm

${CXX} ${FLAGS} -o ${C5}/bai5 ${C5}/bai5.c -lm

${CXX} ${FLAGS} -o ${C6}/bai6 ${C6}/bai6.c -lm

${CXX} ${FLAGS} -o ${C7}/bai7 ${C7}/bai7.c -lm

${CXX} ${FLAGS} -o ${C8}/bai8 ${C8}/bai8.c -lm

${CXX} ${FLAGS} -o ${C9}/bai9 ${C9}/bai9.c -lm

${CXX} ${FLAGS} -o ${C10}/bai10 ${C10}/bai10.c -lm