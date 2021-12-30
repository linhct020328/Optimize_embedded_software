#!/bin/bash

CXX="arm-linux-gnueabi-gcc"
FLAGS="-no-pie -o"

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


#code arm toi uu
${CXX} ${C1}/bai1tu.s ${FLAGS} ${C1}/bai1tu -lm

${CXX} ${C2}/bai2tu.s ${FLAGS} ${C2}/bai2tu -lm

${CXX} ${C3}/bai3tu.s ${FLAGS} ${C3}/bai3tu -lm

${CXX} ${C4}/bai4tu.s ${FLAGS} ${C4}/bai4tu -lm

${CXX} ${C5}/bai5tu.s ${FLAGS} ${C5}/bai5tu -lm

${CXX} ${C6}/bai6tu.s ${FLAGS} ${C6}/bai6tu -lm

${CXX} ${C7}/bai7tu.s ${FLAGS} ${C7}/bai7tu -lm

${CXX} ${C8}/bai8tu.s ${FLAGS} ${C8}/bai8tu -lm

${CXX} ${C9}/bai9tu.s ${FLAGS} ${C9}/bai9tu -lm

${CXX} ${C10}/bai10tu.s ${FLAGS} ${C10}/bai10tu -lm