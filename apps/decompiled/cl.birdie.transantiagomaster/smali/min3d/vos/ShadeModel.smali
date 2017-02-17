.class public final enum Lmin3d/vos/ShadeModel;
.super Ljava/lang/Enum;
.source "ShadeModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmin3d/vos/ShadeModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lmin3d/vos/ShadeModel;

.field public static final enum FLAT:Lmin3d/vos/ShadeModel;

.field public static final enum SMOOTH:Lmin3d/vos/ShadeModel;


# instance fields
.field private final _glConstant:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lmin3d/vos/ShadeModel;

    const-string v1, "SMOOTH"

    const/16 v2, 0x1d01

    invoke-direct {v0, v1, v3, v2}, Lmin3d/vos/ShadeModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/ShadeModel;->SMOOTH:Lmin3d/vos/ShadeModel;

    .line 8
    new-instance v0, Lmin3d/vos/ShadeModel;

    const-string v1, "FLAT"

    const/16 v2, 0x1d00

    invoke-direct {v0, v1, v4, v2}, Lmin3d/vos/ShadeModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/ShadeModel;->FLAT:Lmin3d/vos/ShadeModel;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lmin3d/vos/ShadeModel;

    sget-object v1, Lmin3d/vos/ShadeModel;->SMOOTH:Lmin3d/vos/ShadeModel;

    aput-object v1, v0, v3

    sget-object v1, Lmin3d/vos/ShadeModel;->FLAT:Lmin3d/vos/ShadeModel;

    aput-object v1, v0, v4

    sput-object v0, Lmin3d/vos/ShadeModel;->ENUM$VALUES:[Lmin3d/vos/ShadeModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "$glConstant"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lmin3d/vos/ShadeModel;->_glConstant:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmin3d/vos/ShadeModel;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmin3d/vos/ShadeModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmin3d/vos/ShadeModel;

    return-object v0
.end method

.method public static values()[Lmin3d/vos/ShadeModel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmin3d/vos/ShadeModel;->ENUM$VALUES:[Lmin3d/vos/ShadeModel;

    array-length v1, v0

    new-array v2, v1, [Lmin3d/vos/ShadeModel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final glConstant()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lmin3d/vos/ShadeModel;->_glConstant:I

    return v0
.end method
