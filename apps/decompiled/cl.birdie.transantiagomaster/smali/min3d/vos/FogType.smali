.class public final enum Lmin3d/vos/FogType;
.super Ljava/lang/Enum;
.source "FogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmin3d/vos/FogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lmin3d/vos/FogType;

.field public static final enum EXP:Lmin3d/vos/FogType;

.field public static final enum EXP2:Lmin3d/vos/FogType;

.field public static final enum LINEAR:Lmin3d/vos/FogType;


# instance fields
.field private final _glValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lmin3d/vos/FogType;

    const-string v1, "LINEAR"

    const/16 v2, 0x2601

    invoke-direct {v0, v1, v3, v2}, Lmin3d/vos/FogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/FogType;->LINEAR:Lmin3d/vos/FogType;

    .line 7
    new-instance v0, Lmin3d/vos/FogType;

    const-string v1, "EXP"

    const/16 v2, 0x800

    invoke-direct {v0, v1, v4, v2}, Lmin3d/vos/FogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/FogType;->EXP:Lmin3d/vos/FogType;

    .line 8
    new-instance v0, Lmin3d/vos/FogType;

    const-string v1, "EXP2"

    const/16 v2, 0x801

    invoke-direct {v0, v1, v5, v2}, Lmin3d/vos/FogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/FogType;->EXP2:Lmin3d/vos/FogType;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lmin3d/vos/FogType;

    sget-object v1, Lmin3d/vos/FogType;->LINEAR:Lmin3d/vos/FogType;

    aput-object v1, v0, v3

    sget-object v1, Lmin3d/vos/FogType;->EXP:Lmin3d/vos/FogType;

    aput-object v1, v0, v4

    sget-object v1, Lmin3d/vos/FogType;->EXP2:Lmin3d/vos/FogType;

    aput-object v1, v0, v5

    sput-object v0, Lmin3d/vos/FogType;->ENUM$VALUES:[Lmin3d/vos/FogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "$glValue"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lmin3d/vos/FogType;->_glValue:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmin3d/vos/FogType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmin3d/vos/FogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmin3d/vos/FogType;

    return-object v0
.end method

.method public static values()[Lmin3d/vos/FogType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmin3d/vos/FogType;->ENUM$VALUES:[Lmin3d/vos/FogType;

    array-length v1, v0

    new-array v2, v1, [Lmin3d/vos/FogType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final glValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lmin3d/vos/FogType;->_glValue:I

    return v0
.end method
