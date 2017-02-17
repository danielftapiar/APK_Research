.class public final enum Lcl/santander/santanderCL/utils/Constant$TIPO_POI;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TIPO_POI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/Constant$TIPO_POI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

.field public static final enum IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

.field public static final enum SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

.field public static final enum SUCURSAL:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    const-string v1, "IMPERDIBLE"

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    const-string v1, "CAJERO"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    const-string v1, "SUCURSAL"

    invoke-direct {v0, v1, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SUCURSAL:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    new-instance v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    const-string v1, "SIN_TIPO"

    invoke-direct {v0, v1, v5}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    const/4 v0, 0x4

    new-array v0, v0, [Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    aput-object v1, v0, v2

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    aput-object v1, v0, v3

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SUCURSAL:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    aput-object v1, v0, v4

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    aput-object v1, v0, v5

    sput-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/Constant$TIPO_POI;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/Constant$TIPO_POI;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
