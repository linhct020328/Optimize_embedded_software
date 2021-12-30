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

${CXX} ${C1}/bai1_arm.s ${FLAGS} ${C1}/bai1_arm -lm
${CXX} ${C1}/bai1tu_arm.s ${FLAGS} ${C1}/bai1tu_arm -lm

${CXX} ${C2}/bai2_arm.s ${FLAGS} ${C2}/bai2_arm -lm
${CXX} ${C2}/bai2tu_arm.s ${FLAGS} ${C2}/bai2tu_arm -lm

${CXX} ${C3}/bai3_arm.s ${FLAGS} ${C3}/bai3_arm -lm
${CXX} ${C3}/bai3tu_arm.s ${FLAGS} ${C3}/bai3tu_arm -lm

${CXX} ${C4}/bai4_arm.s ${FLAGS} ${C4}/bai4_arm -lm
${CXX} ${C4}/bai4tu_arm.s ${FLAGS} ${C4}/bai4tu_arm -lm

${CXX} ${C5}/bai5_arm.s ${FLAGS} ${C5}/bai5_arm -lm
${CXX} ${C5}/bai5tu_arm.s ${FLAGS} ${C5}/bai5tu_arm -lm

${CXX} ${C6}/bai6_arm.s ${FLAGS} ${C6}/bai6_arm -lm
${CXX} ${C6}/bai6tu_arm.s ${FLAGS} ${C6}/bai6tu_arm -lm

${CXX} ${C7}/bai7_arm.s ${FLAGS} ${C7}/bai7_arm -lm
${CXX} ${C7}/bai7tu_arm.s ${FLAGS} ${C7}/bai7tu_arm -lm

${CXX} ${C8}/bai8_arm.s ${FLAGS} ${C8}/bai8_arm -lm
${CXX} ${C8}/bai8tu_arm.s ${FLAGS} ${C8}/bai8tu_arm -lm

${CXX} ${C9}/bai9_arm.s ${FLAGS} ${C9}/bai9_arm -lm
${CXX} ${C9}/bai9tu_arm.s ${FLAGS} ${C9}/bai9tu_arm -lm

${CXX} ${C10}/bai10_arm.s ${FLAGS} ${C10}/bai10_arm -lm
${CXX} ${C10}/bai10tu_arm.s ${FLAGS} ${C10}/bai10tu_arm -lm
