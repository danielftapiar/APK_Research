.class public final enum Lmin3d/vos/RenderType;
.super Ljava/lang/Enum;
.source "RenderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmin3d/vos/RenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lmin3d/vos/RenderType;

.field public static final enum LINES:Lmin3d/vos/RenderType;

.field public static final enum LINE_LOOP:Lmin3d/vos/RenderType;

.field public static final enum LINE_STRIP:Lmin3d/vos/RenderType;

.field public static final enum POINTS:Lmin3d/vos/RenderType;

.field public static final enum TRIANGLES:Lmin3d/vos/RenderType;

.field public static final enum TRIANGLE_FAN:Lmin3d/vos/RenderType;

.field public static final enum TRIANGLE_STRIP:Lmin3d/vos/RenderType;


# instance fields
.field private final _glValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "POINTS"

    invoke-direct {v0, v1, v4, v4}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->POINTS:Lmin3d/vos/RenderType;

    .line 8
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "LINES"

    invoke-direct {v0, v1, v5, v5}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->LINES:Lmin3d/vos/RenderType;

    .line 9
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "LINE_LOOP"

    invoke-direct {v0, v1, v6, v6}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->LINE_LOOP:Lmin3d/vos/RenderType;

    .line 10
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "LINE_STRIP"

    invoke-direct {v0, v1, v7, v7}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->LINE_STRIP:Lmin3d/vos/RenderType;

    .line 11
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "TRIANGLES"

    invoke-direct {v0, v1, v8, v8}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->TRIANGLES:Lmin3d/vos/RenderType;

    .line 12
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "TRIANGLE_STRIP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->TRIANGLE_STRIP:Lmin3d/vos/RenderType;

    .line 13
    new-instance v0, Lmin3d/vos/RenderType;

    const-string v1, "TRIANGLE_FAN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lmin3d/vos/RenderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmin3d/vos/RenderType;->TRIANGLE_FAN:Lmin3d/vos/RenderType;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lmin3d/vos/RenderType;

    sget-object v1, Lmin3d/vos/RenderType;->POINTS:Lmin3d/vos/RenderType;

    aput-object v1, v0, v4

    sget-object v1, Lmin3d/vos/RenderType;->LINES:Lmin3d/vos/RenderType;

    aput-object v1, v0, v5

    sget-object v1, Lmin3d/vos/RenderType;->LINE_LOOP:Lmin3d/vos/RenderType;

    aput-object v1, v0, v6

    sget-object v1, Lmin3d/vos/RenderType;->LINE_STRIP:Lmin3d/vos/RenderType;

    aput-object v1, v0, v7

    sget-object v1, Lmin3d/vos/RenderType;->TRIANGLES:Lmin3d/vos/RenderType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmin3d/vos/RenderType;->TRIANGLE_STRIP:Lmin3d/vos/RenderType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmin3d/vos/RenderType;->TRIANGLE_FAN:Lmin3d/vos/RenderType;

    aput-object v2, v0, v1

    sput-object v0, Lmin3d/vos/RenderType;->ENUM$VALUES:[Lmin3d/vos/RenderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "$glValue"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lmin3d/vos/RenderType;->_glValue:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmin3d/vos/RenderType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmin3d/vos/RenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmin3d/vos/RenderType;

    return-object v0
.end method

.method public static values()[Lmin3d/vos/RenderType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmin3d/vos/RenderType;->ENUM$VALUES:[Lmin3d/vos/RenderType;

    array-length v1, v0

    new-array v2, v1, [Lmin3d/vos/RenderType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final glValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lmin3d/vos/RenderType;->_glValue:I

    return v0
.end method
