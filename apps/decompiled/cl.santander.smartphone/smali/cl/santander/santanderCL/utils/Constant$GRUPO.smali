.class public final enum Lcl/santander/santanderCL/utils/Constant$GRUPO;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GRUPO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$GRUPO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum CUENTA:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum INVERSIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field public static final enum TARJETAS:Lcl/santander/santanderCL/utils/Constant$GRUPO;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "CUENTA"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->CUENTA:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "LINEA_CREDITO"

    invoke-direct {v0, v1, v4}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "TARJETAS"

    invoke-direct {v0, v1, v5}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->TARJETAS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "INVERSIONES"

    invoke-direct {v0, v1, v6}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "INVERSIONES_DEP"

    invoke-direct {v0, v1, v7}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "INVERSIONES_AHR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "INVERSIONES_FONDOS_MUTUOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "INVERSIONES_APV"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "ACCIONES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const-string v1, "SIN_GRUPO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    const/16 v0, 0xa

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$GRUPO;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->CUENTA:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v1, v0, v3

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v1, v0, v4

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->TARJETAS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v1, v0, v5

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v1, v0, v6

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    aput-object v2, v0, v1

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$GRUPO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$GRUPO;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$GRUPO;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$GRUPO;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
