.class public final Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$FunctionCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
        "Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$FunctionCallOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private function_:I

.field private liveOnly_:Z

.field private name_:I

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private serverSide_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    .line 3234
    return-void
.end method

.method static synthetic access$2800()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 1

    .prologue
    .line 3226
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;-><init>()V

    return-object v0
.end method

.method private buildPartial()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 5

    .prologue
    .line 3275
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;B)V

    .line 3276
    .local v1, "result":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    .line 3277
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3278
    .local v2, "to_bitField0_":I
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3279
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    .line 3280
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    .line 3282
    :cond_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3002(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Ljava/util/List;)Ljava/util/List;

    .line 3283
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3284
    const/4 v2, 0x1

    .line 3286
    :cond_1
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->function_:I

    # setter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3102(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;I)I

    .line 3287
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3288
    or-int/lit8 v2, v2, 0x2

    .line 3290
    :cond_2
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->name_:I

    # setter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3202(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;I)I

    .line 3291
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3292
    or-int/lit8 v2, v2, 0x4

    .line 3294
    :cond_3
    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->liveOnly_:Z

    # setter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3302(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Z)Z

    .line 3295
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3296
    or-int/lit8 v2, v2, 0x8

    .line 3298
    :cond_4
    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->serverSide_:Z

    # setter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3402(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Z)Z

    .line 3299
    # setter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3502(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;I)I

    .line 3300
    return-object v1
.end method

.method private clone()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 2

    .prologue
    .line 3259
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method private mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3343
    const/4 v2, 0x0

    .line 3345
    .local v2, "parsedMessage":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :try_start_0
    sget-object v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3350
    if-eqz v2, :cond_0

    .line 3351
    invoke-virtual {p0, v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    .line 3354
    :cond_0
    return-object p0

    .line 3346
    :catch_0
    move-exception v1

    .line 3347
    .local v1, "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-object v2, v0

    .line 3348
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3350
    .end local v1    # "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3351
    invoke-virtual {p0, v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    :cond_1
    throw v3
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 2

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/UninitializedMessageException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3226
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3226
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3332
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 3336
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 3332
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3336
    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .prologue
    .line 3304
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3328
    :goto_0
    return-object p0

    .line 3305
    :cond_0
    # getter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3000(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3306
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3307
    # getter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3000(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    .line 3308
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    .line 3315
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasFunction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3316
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getFunction()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->function_:I

    .line 3318
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3319
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getName()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->name_:I

    .line 3321
    :cond_3
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasLiveOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3322
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getLiveOnly()Z

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->liveOnly_:Z

    .line 3324
    :cond_4
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasServerSide()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3325
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getServerSide()Z

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->serverSide_:Z

    .line 3327
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    # getter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3600(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    .line 3310
    :cond_6
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->bitField0_:I

    .line 3311
    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->property_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->access$3000(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3226
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite;

    .prologue
    .line 3226
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .end local p1    # "x0":Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3226
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method
