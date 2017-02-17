.class public final enum Lmin3d/vos/LightType;
.super Ljava/lang/Enum;
.source "LightType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmin3d/vos/LightType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIRECTIONAL:Lmin3d/vos/LightType;

.field private static final synthetic ENUM$VALUES:[Lmin3d/vos/LightType;

.field public static final enum POSITIONAL:Lmin3d/vos/LightType;


# instance fields
.field private final _glValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lmin3d/vos/LightType;

    const-string v1, "DIRECTIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmin3d/vos/LightType;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lmin3d/vos/LightType;->DIRECTIONAL:Lmin3d/vos/LightType;

    .line 6
    new-instance v0, Lmin3d/vos/LightType;

    const-string v1, "POSITIONAL"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2}, Lmin3d/vos/LightType;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lmin3d/vos/LightType;->POSITIONAL:Lmin3d/vos/LightType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lmin3d/vos/LightType;

    sget-object v1, Lmin3d/vos/LightType;->DIRECTIONAL:Lmin3d/vos/LightType;

    aput-object v1, v0, v3

    sget-object v1, Lmin3d/vos/LightType;->POSITIONAL:Lmin3d/vos/LightType;

    aput-object v1, v0, v4

    sput-object v0, Lmin3d/vos/LightType;->ENUM$VALUES:[Lmin3d/vos/LightType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "$glValue"    # F

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lmin3d/vos/LightType;->_glValue:F

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmin3d/vos/LightType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmin3d/vos/LightType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmin3d/vos/LightType;

    return-object v0
.end method

.method public static values()[Lmin3d/vos/LightType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmin3d/vos/LightType;->ENUM$VALUES:[Lmin3d/vos/LightType;

    array-length v1, v0

    new-array v2, v1, [Lmin3d/vos/LightType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final glValue()F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lmin3d/vos/LightType;->_glValue:F

    return v0
.end method
