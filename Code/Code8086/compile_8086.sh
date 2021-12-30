#!/bin/bash

CXX="gcc"
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

${CXX} ${C1}/bai1_8086.s ${FLAGS} ${C1}/bai1_8086 -lm
${CXX} ${C1}/bai1tu_8086.s ${FLAGS} ${C1}/bai1tu_8086 -lm

${CXX} ${C2}/bai2_8086.s ${FLAGS} ${C2}/bai2_8086 -lm
${CXX} ${C2}/bai2tu_8086.s ${FLAGS} ${C2}/bai2tu_8086 -lm

${CXX} ${C3}/bai3_8086.s ${FLAGS} ${C3}/bai3_8086 -lm
${CXX} ${C3}/bai3tu_8086.s ${FLAGS} ${C3}/bai3tu_8086 -lm

${CXX} ${C4}/bai4_8086.s ${FLAGS} ${C4}/bai4_8086 -lm
${CXX} ${C4}/bai4tu_8086.s ${FLAGS} ${C4}/bai4tu_8086 -lm

${CXX} ${C5}/bai5_8086.s ${FLAGS} ${C5}/bai5_8086 -lm
${CXX} ${C5}/bai5tu_8086.s ${FLAGS} ${C5}/bai5tu_8086 -lm

${CXX} ${C6}/bai6_8086.s ${FLAGS} ${C6}/bai6_8086 -lm
${CXX} ${C6}/bai6tu_8086.s ${FLAGS} ${C6}/bai6tu_8086 -lm

${CXX} ${C7}/bai7_8086.s ${FLAGS} ${C7}/bai7_8086 -lm
${CXX} ${C7}/bai7tu_8086.s ${FLAGS} ${C7}/bai7tu_8086 -lm

${CXX} ${C8}/bai8_8086.s ${FLAGS} ${C8}/bai8_8086 -lm
${CXX} ${C8}/bai8tu_8086.s ${FLAGS} ${C8}/bai8tu_8086 -lm

${CXX} ${C9}/bai9_8086.s ${FLAGS} ${C9}/bai9_8086 -lm
${CXX} ${C9}/bai9tu_8086.s ${FLAGS} ${C9}/bai9tu_8086 -lm

${CXX} ${C10}/bai10_8086.s ${FLAGS} ${C10}/bai10_8086 -lm
${CXX} ${C10}/bai10tu_8086.s ${FLAGS} ${C10}/bai10tu_8086 -lm