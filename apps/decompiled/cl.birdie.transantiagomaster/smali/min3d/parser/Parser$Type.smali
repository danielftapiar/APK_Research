.class public final enum Lmin3d/parser/Parser$Type;
.super Ljava/lang/Enum;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmin3d/parser/Parser$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lmin3d/parser/Parser$Type;

.field public static final enum MAX_3DS:Lmin3d/parser/Parser$Type;

.field public static final enum MD2:Lmin3d/parser/Parser$Type;

.field public static final enum OBJ:Lmin3d/parser/Parser$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lmin3d/parser/Parser$Type;

    const-string v1, "OBJ"

    invoke-direct {v0, v1, v2}, Lmin3d/parser/Parser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmin3d/parser/Parser$Type;->OBJ:Lmin3d/parser/Parser$Type;

    new-instance v0, Lmin3d/parser/Parser$Type;

    const-string v1, "MAX_3DS"

    invoke-direct {v0, v1, v3}, Lmin3d/parser/Parser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmin3d/parser/Parser$Type;->MAX_3DS:Lmin3d/parser/Parser$Type;

    new-instance v0, Lmin3d/parser/Parser$Type;

    const-string v1, "MD2"

    invoke-direct {v0, v1, v4}, Lmin3d/parser/Parser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmin3d/parser/Parser$Type;->MD2:Lmin3d/parser/Parser$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lmin3d/parser/Parser$Type;

    sget-object v1, Lmin3d/parser/Parser$Type;->OBJ:Lmin3d/parser/Parser$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmin3d/parser/Parser$Type;->MAX_3DS:Lmin3d/parser/Parser$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmin3d/parser/Parser$Type;->MD2:Lmin3d/parser/Parser$Type;

    aput-object v1, v0, v4

    sput-object v0, Lmin3d/parser/Parser$Type;->ENUM$VALUES:[Lmin3d/parser/Parser$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmin3d/parser/Parser$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmin3d/parser/Parser$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmin3d/parser/Parser$Type;

    return-object v0
.end method

.method public static values()[Lmin3d/parser/Parser$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmin3d/parser/Parser$Type;->ENUM$VALUES:[Lmin3d/parser/Parser$Type;

    array-length v1, v0

    new-array v2, v1, [Lmin3d/parser/Parser$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
