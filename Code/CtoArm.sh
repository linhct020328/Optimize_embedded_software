#!/bin/bash

CXX="arm-linux-gnueabi-gcc"
FLAGS="-S"

C1="./CodeC/bai1"
C2="./CodeC/bai2"
C3="./CodeC/bai3"
C4="./CodeC/bai4"
C5="./CodeC/bai5"
C6="./CodeC/bai6"
C7="./CodeC/bai7"
C8="./CodeC/bai8"
C9="./CodeC/bai9"
C10="./CodeC/bai10"

G1="./CodeArm/bai1"
G2="./CodeArm/bai2"
G3="./CodeArm/bai3"
G4="./CodeArm/bai4"
G5="./CodeArm/bai5"
G6="./CodeArm/bai6"
G7="./CodeArm/bai7"
G8="./CodeArm/bai8"
G9="./CodeArm/bai9"
G10="./CodeArm/bai10"

${CXX} ${FLAGS} ${C1}/bai1.c -o ${G1}/bai1_arm.s
${CXX} ${FLAGS} ${C1}/bai1tu.c -o ${G1}/bai1tu_arm.s

${CXX} ${FLAGS} ${C2}/bai2.c -o ${G2}/bai2_arm.s
${CXX} ${FLAGS} ${C2}/bai2tu.c -o ${G2}/bai2tu_arm.s

${CXX} ${FLAGS} ${C3}/bai3.c -o ${G3}/bai3_arm.s
${CXX} ${FLAGS} ${C3}/bai3tu.c -o ${G3}/bai1tu_arm.s

${CXX} ${FLAGS} ${C4}/bai4.c -o ${G4}/bai4_arm.s
${CXX} ${FLAGS} ${C4}/bai4tu.c -o ${G4}/bai4tu_arm.s

${CXX} ${FLAGS} ${C5}/bai5.c -o ${G5}/bai5_arm.s
${CXX} ${FLAGS} ${C5}/bai5tu.c -o ${G5}/bai5tu_arm.s

${CXX} ${FLAGS} ${C6}/bai6.c -o ${G6}/bai6_arm.s
${CXX} ${FLAGS} ${C6}/bai6tu.c -o ${G6}/bai6tu_arm.s

${CXX} ${FLAGS} ${C7}/bai7.c -o ${G7}/bai7_arm.s
${CXX} ${FLAGS} ${C7}/bai7tu.c -o ${G7}/bai7tu_arm.s

${CXX} ${FLAGS} ${C8}/bai8.c -o ${G8}/bai8_arm.s
${CXX} ${FLAGS} ${C8}/bai8tu.c -o ${G8}/bai8tu_arm.s

${CXX} ${FLAGS} ${C9}/bai9.c -o ${G9}/bai9_arm.s
${CXX} ${FLAGS} ${C9}/bai9tu.c -o ${G9}/bai9tu_arm.s

${CXX} ${FLAGS} ${C10}/bai10.c -o ${G10}/bai10_arm.s
${CXX} ${FLAGS} ${C10}/bai10tu.c -o ${G10}/bai10tu_arm.s