.class public final Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/analytics/containertag/proto/Serving$Resource;",
        "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enableAutoEventTracking_:Z

.field private key_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field private macro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private malwareScanAuthCode_:Ljava/lang/Object;

.field private predicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private previewAuthCode_:Ljava/lang/Object;

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation
.end field

.field private reportingSampleRate_:F

.field private resourceFormatVersion_:I

.field private rule_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private templateVersionSet_:Ljava/lang/Object;

.field private usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7554
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7870
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 8088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 8213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 8338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 8463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 8588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 8713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    .line 8789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 8865
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    .line 8941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 9017
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 9141
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7555
    return-void
.end method

.method static synthetic access$6000()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .prologue
    .line 7547
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;-><init>()V

    return-object v0
.end method

.method private buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 6

    .prologue
    const v5, 0x8000

    .line 7618
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;B)V

    .line 7619
    .local v1, "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7620
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 7621
    .local v2, "to_bitField0_":I
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7622
    new-instance v3, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7624
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7626
    :cond_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6202(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/tagmanager/protobuf/LazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7627
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7628
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 7629
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7631
    :cond_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6302(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7632
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7633
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 7634
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7636
    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6402(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7637
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7638
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 7639
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7641
    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6502(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7642
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7643
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 7644
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7646
    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6602(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7647
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 7648
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 7649
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7651
    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6702(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7652
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 7653
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 7654
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7656
    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6802(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7657
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 7658
    const/4 v2, 0x1

    .line 7660
    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6902(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7661
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 7662
    or-int/lit8 v2, v2, 0x2

    .line 7664
    :cond_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7002(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7665
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 7666
    or-int/lit8 v2, v2, 0x4

    .line 7668
    :cond_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7102(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7669
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 7670
    or-int/lit8 v2, v2, 0x8

    .line 7672
    :cond_a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7202(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7673
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 7674
    or-int/lit8 v2, v2, 0x10

    .line 7676
    :cond_b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7302(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 7677
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 7678
    or-int/lit8 v2, v2, 0x20

    .line 7680
    :cond_c
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate_:F
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7402(Lcom/google/analytics/containertag/proto/Serving$Resource;F)F

    .line 7681
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 7682
    or-int/lit8 v2, v2, 0x40

    .line 7684
    :cond_d
    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->enableAutoEventTracking_:Z
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7502(Lcom/google/analytics/containertag/proto/Serving$Resource;Z)Z

    .line 7685
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 7686
    new-instance v3, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7688
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7690
    :cond_e
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7602(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/tagmanager/protobuf/LazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7691
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 7692
    or-int/lit16 v2, v2, 0x80

    .line 7694
    :cond_f
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion_:I
    invoke-static {v1, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7702(Lcom/google/analytics/containertag/proto/Serving$Resource;I)I

    .line 7695
    # setter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7802(Lcom/google/analytics/containertag/proto/Serving$Resource;I)I

    .line 7696
    return-object v1
.end method

.method private clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2

    .prologue
    .line 7602
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method private mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7855
    const/4 v2, 0x0

    .line 7857
    .local v2, "parsedMessage":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :try_start_0
    sget-object v3, Lcom/google/analytics/containertag/proto/Serving$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7862
    if-eqz v2, :cond_0

    .line 7863
    invoke-virtual {p0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    .line 7866
    :cond_0
    return-object p0

    .line 7858
    :catch_0
    move-exception v1

    .line 7859
    .local v1, "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-object v2, v0

    .line 7860
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7862
    .end local v1    # "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7863
    invoke-virtual {p0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    :cond_1
    throw v3
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 2

    .prologue
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->isInitialized()Z

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
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

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
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7547
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7547
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7819
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 7848
    :goto_1
    return v1

    .line 7818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7824
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7825
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$Property;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 7827
    goto :goto_1

    .line 7824
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7830
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7831
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 7833
    goto :goto_1

    .line 7830
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7836
    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 7837
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 7839
    goto :goto_1

    .line 7836
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7842
    :cond_7
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 7843
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 7845
    goto :goto_1

    .line 7842
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7848
    :cond_9
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 3
    .param p1, "other"    # Lcom/google/analytics/containertag/proto/Serving$Resource;

    .prologue
    .line 7700
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7814
    :goto_0
    return-object p0

    .line 7701
    :cond_0
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7702
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7703
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7704
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7711
    :cond_1
    :goto_1
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7712
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7713
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 7714
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7721
    :cond_2
    :goto_2
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7722
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7723
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 7724
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7731
    :cond_3
    :goto_3
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7732
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7733
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 7734
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7741
    :cond_4
    :goto_4
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7742
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7743
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 7744
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7751
    :cond_5
    :goto_5
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7752
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7753
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 7754
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7761
    :cond_6
    :goto_6
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7762
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7763
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 7764
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7771
    :cond_7
    :goto_7
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasPreviewAuthCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7772
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7773
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6900(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    .line 7776
    :cond_8
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasMalwareScanAuthCode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7777
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7778
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7000(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 7781
    :cond_9
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasTemplateVersionSet()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7782
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7783
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7100(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    .line 7786
    :cond_a
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7787
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7788
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->version_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 7791
    :cond_b
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasLiveJsCacheOption()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7792
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v2

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {v1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    :goto_8
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7794
    :cond_c
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasReportingSampleRate()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7795
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getReportingSampleRate()F

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    .line 7797
    :cond_d
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasEnableAutoEventTracking()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7798
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getEnableAutoEventTracking()Z

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    .line 7800
    :cond_e
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 7801
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7802
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7803
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7810
    :cond_f
    :goto_9
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasResourceFormatVersion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7811
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getResourceFormatVersion()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    .line 7813
    :cond_10
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7900(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    .line 7706
    :cond_11
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7707
    :cond_12
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 7716
    :cond_13
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7717
    :cond_14
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 7726
    :cond_15
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7727
    :cond_16
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 7736
    :cond_17
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7737
    :cond_18
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->macro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 7746
    :cond_19
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7747
    :cond_1a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->tag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 7756
    :cond_1b
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7757
    :cond_1c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 7766
    :cond_1d
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7767
    :cond_1e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->rule_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 7792
    :cond_1f
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    goto/16 :goto_8

    .line 7805
    :cond_20
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_21

    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7806
    :cond_21
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9
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
    .line 7547
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite;

    .prologue
    .line 7547
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .end local p1    # "x0":Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

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
    .line 7547
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method
