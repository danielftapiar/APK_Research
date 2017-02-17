.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private element_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9642
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 9830
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 9855
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9643
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->maybeForceBuilderInitialization()V

    .line 9644
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 9647
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 9830
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 9855
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9648
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->maybeForceBuilderInitialization()V

    .line 9649
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)V
    .locals 0

    .prologue
    .line 9646
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9693
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9655
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9695
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9696
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9697
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 9698
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 9697
    throw v1

    .line 9700
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9656
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;-><init>()V

    return-object v0
.end method

.method private ensureElementIsMutable()V
    .locals 2

    .prologue
    .line 9857
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9858
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9859
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9861
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9633
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$38()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10027
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 10028
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 10030
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 10031
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 10032
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 10033
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 10028
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 10034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 10036
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 10031
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 9651
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9652
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9654
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllElement(Ljava/lang/Iterable;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;)",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;"
        }
    .end annotation

    .prologue
    .line 9963
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9964
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9965
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9966
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9970
    :goto_0
    return-object p0

    .line 9968
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addElement(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 9952
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9953
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9954
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9955
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9959
    :goto_0
    return-object p0

    .line 9957
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addElement(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 9927
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 9928
    if-nez p2, :cond_0

    .line 9929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9931
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9932
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9933
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9937
    :goto_0
    return-object p0

    .line 9935
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 9941
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9942
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9943
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9944
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9948
    :goto_0
    return-object p0

    .line 9946
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 9913
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 9914
    if-nez p1, :cond_0

    .line 9915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9917
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9918
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9919
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9923
    :goto_0
    return-object p0

    .line 9921
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addElementBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2

    .prologue
    .line 10012
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 10013
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    .line 10012
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public addElementBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 10017
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 10018
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    .line 10017
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 2

    .prologue
    .line 9686
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    .line 9687
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9688
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9690
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 5

    .prologue
    .line 9704
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)V

    .line 9705
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9706
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 9707
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9708
    or-int/lit8 v2, v2, 0x1

    .line 9710
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;)V

    .line 9711
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 9712
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9713
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9714
    iget v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9716
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Ljava/util/List;)V

    .line 9720
    :goto_0
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;I)V

    .line 9721
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onBuilt()V

    .line 9722
    return-object v1

    .line 9718
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9660
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 9661
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 9662
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9663
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9665
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9669
    :goto_0
    return-object p0

    .line 9667
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearElement()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9973
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9974
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9975
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9976
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9980
    :goto_0
    return-object p0

    .line 9978
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1

    .prologue
    .line 9847
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9848
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 9849
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9850
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 2

    .prologue
    .line 9673
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .locals 1

    .prologue
    .line 9682
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9678
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9881
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9882
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 9884
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    goto :goto_0
.end method

.method public getElementBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9994
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    return-object v0
.end method

.method public getElementBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10022
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    .prologue
    .line 9874
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9875
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9877
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9867
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9868
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9998
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9999
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    .line 10000
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;

    goto :goto_0
.end method

.method public getElementOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10005
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 10006
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 10008
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    .locals 1

    .prologue
    .line 9835
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    return-object v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9832
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

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
    .line 9638
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$66()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9770
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->hasType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9780
    :cond_0
    :goto_0
    return v1

    .line 9774
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 9780
    const/4 v1, 0x1

    goto :goto_0

    .line 9775
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9774
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9789
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 9788
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 9791
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9792
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 9798
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 9799
    if-nez v5, :cond_0

    .line 9800
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 9801
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9802
    :goto_1
    return-object p0

    .line 9794
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 9795
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    goto :goto_1

    .line 9807
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 9808
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    move-result-object v4

    .line 9809
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    if-nez v4, :cond_1

    .line 9810
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 9812
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9813
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    goto :goto_0

    .line 9818
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    :sswitch_2
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v1

    .line 9819
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9820
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->addElement(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    goto :goto_0

    .line 9792
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 9726
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    if-eqz v0, :cond_0

    .line 9727
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    move-result-object p0

    .line 9730
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    :goto_0
    return-object p0

    .line 9729
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 2
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .prologue
    const/4 v0, 0x0

    .line 9735
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 9766
    :goto_0
    return-object p0

    .line 9736
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9737
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 9739
    :cond_1
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 9740
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9741
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9742
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9743
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9748
    :goto_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9765
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 9745
    :cond_3
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9746
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9751
    :cond_4
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9752
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9753
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 9754
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 9755
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    .line 9756
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9758
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$7()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9759
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->getElementFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 9757
    :cond_5
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 9761
    :cond_6
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->element_:Ljava/util/List;
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9983
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9984
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9985
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9986
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9990
    :goto_0
    return-object p0

    .line 9988
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setElement(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .prologue
    .line 9903
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 9904
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9905
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9906
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9910
    :goto_0
    return-object p0

    .line 9908
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setElement(ILcom/mwr/jdiesel/api/Protobuf$Message$Argument;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .prologue
    .line 9889
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 9890
    if-nez p2, :cond_0

    .line 9891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9893
    :cond_0
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->ensureElementIsMutable()V

    .line 9894
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->element_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9895
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9899
    :goto_0
    return-object p0

    .line 9897
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->elementBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .prologue
    .line 9838
    if-nez p1, :cond_0

    .line 9839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9841
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->bitField0_:I

    .line 9842
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 9843
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;->onChanged()V

    .line 9844
    return-object p0
.end method
