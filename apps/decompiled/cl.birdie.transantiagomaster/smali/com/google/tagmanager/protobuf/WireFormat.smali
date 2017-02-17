.class public final Lcom/google/tagmanager/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/WireFormat$FieldType;,
        Lcom/google/tagmanager/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0xb

    sput v0, Lcom/google/tagmanager/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 129
    const/16 v0, 0xc

    sput v0, Lcom/google/tagmanager/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 131
    const/16 v0, 0x10

    sput v0, Lcom/google/tagmanager/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 133
    const/16 v0, 0x1a

    sput v0, Lcom/google/tagmanager/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 37
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 32
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag$255f288(I)I
    .locals 1
    .param p0, "fieldNumber"    # I

    .prologue
    .line 42
    shl-int/lit8 v0, p0, 0x3

    or-int/lit8 v0, v0, 0x4

    return v0
.end method
