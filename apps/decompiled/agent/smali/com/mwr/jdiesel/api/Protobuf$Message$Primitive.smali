.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$PrimitiveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;,
        Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    }
.end annotation


# static fields
.field public static final BOOL_FIELD_NUMBER:I = 0x2

.field public static final BYTE_FIELD_NUMBER:I = 0x6

.field public static final CHAR_FIELD_NUMBER:I = 0x9

.field public static final DOUBLE_FIELD_NUMBER:I = 0x8

.field public static final FLOAT_FIELD_NUMBER:I = 0x5

.field public static final INT_FIELD_NUMBER:I = 0x3

.field public static final LONG_FIELD_NUMBER:I = 0x4

.field public static final SHORT_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bool_:Z

.field private byte_:I

.field private char_:I

.field private double_:D

.field private float_:F

.field private int_:I

.field private long_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private short_:I

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12453
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 12454
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->initFields()V

    .line 12455
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .prologue
    const/4 v0, -0x1

    .line 11606
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 11818
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedIsInitialized:B

    .line 11864
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedSerializedSize:I

    .line 11607
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V
    .locals 0

    .prologue
    .line 11605
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 11608
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11818
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedIsInitialized:B

    .line 11864
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedSerializedSize:I

    .line 11608
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;Z)V
    .locals 0

    .prologue
    .line 11729
    iput-boolean p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bool_:Z

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V
    .locals 0

    .prologue
    .line 11739
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->int_:I

    return-void
.end method

.method static synthetic access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;J)V
    .locals 0

    .prologue
    .line 11749
    iput-wide p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->long_:J

    return-void
.end method

.method static synthetic access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;F)V
    .locals 0

    .prologue
    .line 11759
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->float_:F

    return-void
.end method

.method static synthetic access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V
    .locals 0

    .prologue
    .line 11769
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->byte_:I

    return-void
.end method

.method static synthetic access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V
    .locals 0

    .prologue
    .line 11779
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->short_:I

    return-void
.end method

.method static synthetic access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;D)V
    .locals 0

    .prologue
    .line 11789
    iput-wide p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->double_:D

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V
    .locals 0

    .prologue
    .line 11799
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->char_:I

    return-void
.end method

.method static synthetic access$18(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;I)V
    .locals 0

    .prologue
    .line 11716
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 11601
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;)V
    .locals 0

    .prologue
    .line 11719
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    return-void
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1

    .prologue
    .line 11612
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11621
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11808
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11809
    iput-boolean v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bool_:Z

    .line 11810
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->int_:I

    .line 11811
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->long_:J

    .line 11812
    const/4 v0, 0x0

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->float_:F

    .line 11813
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->byte_:I

    .line 11814
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->short_:I

    .line 11815
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->double_:D

    .line 11816
    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->char_:I

    .line 11817
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 11985
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .prologue
    .line 11988
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11954
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    .line 11955
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11956
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    .line 11958
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11965
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    .line 11966
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11967
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    .line 11969
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11921
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11927
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 11928
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 11927
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11975
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11981
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    .line 11982
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 11981
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11943
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11949
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 11950
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 11949
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11932
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11938
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 11939
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    .line 11938
    return-object v0
.end method


# virtual methods
.method public getBool()Z
    .locals 1

    .prologue
    .line 11734
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bool_:Z

    return v0
.end method

.method public getByte()I
    .locals 1

    .prologue
    .line 11774
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->byte_:I

    return v0
.end method

.method public getChar()I
    .locals 1

    .prologue
    .line 11804
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->char_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 1

    .prologue
    .line 11616
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    return-object v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 11794
    iget-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->double_:D

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .prologue
    .line 11764
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->float_:F

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 11744
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->int_:I

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 11754
    iget-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->long_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11866
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedSerializedSize:I

    .line 11867
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 11908
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 11869
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 11870
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 11872
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11874
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 11876
    iget-boolean v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bool_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11878
    :cond_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 11880
    const/4 v2, 0x3

    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->int_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11882
    :cond_3
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 11884
    iget-wide v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->long_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11886
    :cond_4
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 11888
    const/4 v2, 0x5

    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->float_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 11890
    :cond_5
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 11892
    const/4 v2, 0x6

    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->byte_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11894
    :cond_6
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 11896
    const/4 v2, 0x7

    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->short_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11898
    :cond_7
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 11900
    iget-wide v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->double_:D

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 11902
    :cond_8
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 11904
    const/16 v2, 0x9

    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->char_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11906
    :cond_9
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 11907
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedSerializedSize:I

    move v1, v0

    .line 11908
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getShort()I
    .locals 1

    .prologue
    .line 11784
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->short_:I

    return v0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 1

    .prologue
    .line 11724
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    return-object v0
.end method

.method public hasBool()Z
    .locals 2

    .prologue
    .line 11731
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasByte()Z
    .locals 2

    .prologue
    .line 11771
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChar()Z
    .locals 2

    .prologue
    .line 11801
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDouble()Z
    .locals 2

    .prologue
    .line 11791
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFloat()Z
    .locals 2

    .prologue
    .line 11761
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInt()Z
    .locals 2

    .prologue
    .line 11741
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLong()Z
    .locals 2

    .prologue
    .line 11751
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShort()Z
    .locals 2

    .prologue
    .line 11781
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11721
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 11626
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$70()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11820
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedIsInitialized:B

    .line 11821
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 11828
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 11821
    goto :goto_0

    .line 11823
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11824
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedIsInitialized:B

    move v1, v2

    .line 11825
    goto :goto_0

    .line 11827
    :cond_2
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 11986
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 11995
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;)V

    .line 11996
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    .locals 1

    .prologue
    .line 11990
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11915
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 11833
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getSerializedSize()I

    .line 11834
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 11835
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11837
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 11838
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bool_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11840
    :cond_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 11841
    const/4 v0, 0x3

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->int_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11843
    :cond_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 11844
    iget-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->long_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11846
    :cond_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 11847
    const/4 v0, 0x5

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->float_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 11849
    :cond_4
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 11850
    const/4 v0, 0x6

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->byte_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11852
    :cond_5
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 11853
    const/4 v0, 0x7

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->short_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11855
    :cond_6
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 11856
    iget-wide v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->double_:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 11858
    :cond_7
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 11859
    const/16 v0, 0x9

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->char_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11861
    :cond_8
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 11862
    return-void
.end method
