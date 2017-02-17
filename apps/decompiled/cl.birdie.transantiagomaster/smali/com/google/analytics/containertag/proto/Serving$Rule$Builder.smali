.class public final Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$RuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/analytics/containertag/proto/Serving$Rule;",
        "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$RuleOrBuilder;"
    }
.end annotation


# instance fields
.field private addMacroRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addMacro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addTagRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addTag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private negativePredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private positivePredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacroRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeTagRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeTag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4591
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 5025
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 5157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 5223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 5289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 5355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 5421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4592
    return-void
.end method

.method static synthetic access$3800()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .prologue
    .line 4584
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;-><init>()V

    return-object v0
.end method

.method private buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 3

    .prologue
    .line 4643
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;B)V

    .line 4644
    .local v0, "result":Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4645
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4646
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4647
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4649
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4002(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4650
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4651
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4652
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4654
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4102(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4655
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 4656
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 4657
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4659
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4202(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4660
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 4661
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 4662
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4664
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4302(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4665
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 4666
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 4667
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4669
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4402(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4670
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 4671
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 4672
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4674
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4502(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4675
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 4676
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 4677
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4679
    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4602(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4680
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 4681
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 4682
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4684
    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4702(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4685
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 4686
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 4687
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4689
    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4802(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4690
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 4691
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4692
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4694
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    # setter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4902(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4695
    return-object v0
.end method

.method private clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 2

    .prologue
    .line 4627
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method private mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4812
    const/4 v2, 0x0

    .line 4814
    .local v2, "parsedMessage":Lcom/google/analytics/containertag/proto/Serving$Rule;
    :try_start_0
    sget-object v3, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4819
    if-eqz v2, :cond_0

    .line 4820
    invoke-virtual {p0, v2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    .line 4823
    :cond_0
    return-object p0

    .line 4815
    :catch_0
    move-exception v1

    .line 4816
    .local v1, "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-object v2, v0

    .line 4817
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4819
    .end local v1    # "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4820
    invoke-virtual {p0, v2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    :cond_1
    throw v3
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 2

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->isInitialized()Z

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
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

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
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4584
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4584
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4805
    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/analytics/containertag/proto/Serving$Rule;

    .prologue
    .line 4699
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4801
    :goto_0
    return-object p0

    .line 4700
    :cond_0
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4701
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4702
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4703
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4710
    :cond_1
    :goto_1
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4711
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4712
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4713
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4720
    :cond_2
    :goto_2
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4721
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4722
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 4723
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4730
    :cond_3
    :goto_3
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4731
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4732
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 4733
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4740
    :cond_4
    :goto_4
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4741
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4742
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 4743
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4750
    :cond_5
    :goto_5
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4751
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4752
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 4753
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4760
    :cond_6
    :goto_6
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4761
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4762
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 4763
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4770
    :cond_7
    :goto_7
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4771
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4772
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 4773
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4780
    :cond_8
    :goto_8
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4781
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4782
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 4783
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4790
    :cond_9
    :goto_9
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4791
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4792
    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4793
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4800
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$5000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    .line 4705
    :cond_b
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4706
    :cond_c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4715
    :cond_d
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4716
    :cond_e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 4725
    :cond_f
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4726
    :cond_10
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 4735
    :cond_11
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4736
    :cond_12
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 4745
    :cond_13
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4746
    :cond_14
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 4755
    :cond_15
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4756
    :cond_16
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 4765
    :cond_17
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4766
    :cond_18
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 4775
    :cond_19
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4776
    :cond_1a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 4785
    :cond_1b
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4786
    :cond_1c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    .line 4795
    :cond_1d
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4796
    :cond_1e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    # getter for: Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a
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
    .line 4584
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite;

    .prologue
    .line 4584
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    .end local p1    # "x0":Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

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
    .line 4584
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method
