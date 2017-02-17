.class public final Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/analytics/midtier/proto/containertag/TypeSystem$ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;",
        ">;",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private boolean_:Z

.field private containsReferences_:Z

.field private escaping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation
.end field

.field private functionId_:Ljava/lang/Object;

.field private integer_:J

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private macroReference_:Ljava/lang/Object;

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private string_:Ljava/lang/Object;

.field private templateToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 1678
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .line 1713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 2039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 2164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    .line 2240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 2380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 2505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1424
    return-void
.end method

.method static synthetic access$100()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .prologue
    .line 1417
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;-><init>()V

    return-object v0
.end method

.method private buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 5

    .prologue
    .line 1479
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;B)V

    .line 1480
    .local v1, "result":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1481
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1482
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1483
    const/4 v2, 0x1

    .line 1485
    :cond_0
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$302(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .line 1486
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1487
    or-int/lit8 v2, v2, 0x2

    .line 1489
    :cond_1
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$402(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1491
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1492
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1494
    :cond_2
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$502(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1495
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1496
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1497
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1499
    :cond_3
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$602(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1500
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1501
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 1502
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1504
    :cond_4
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$702(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1505
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1506
    or-int/lit8 v2, v2, 0x4

    .line 1508
    :cond_5
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$802(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1510
    or-int/lit8 v2, v2, 0x8

    .line 1512
    :cond_6
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$902(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1514
    or-int/lit8 v2, v2, 0x10

    .line 1516
    :cond_7
    iget-wide v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer_:J
    invoke-static {v1, v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1002(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;J)J

    .line 1517
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1518
    or-int/lit8 v2, v2, 0x20

    .line 1520
    :cond_8
    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1102(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Z)Z

    .line 1521
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1522
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 1523
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1525
    :cond_9
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1202(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1526
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1527
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1528
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1530
    :cond_a
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1302(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1531
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1532
    or-int/lit8 v2, v2, 0x40

    .line 1534
    :cond_b
    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences_:Z
    invoke-static {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1402(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Z)Z

    .line 1535
    # setter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1502(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)I

    .line 1536
    return-object v1
.end method

.method private clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2

    .prologue
    .line 1463
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method private ensureListItemIsMutable()V
    .locals 2

    .prologue
    .line 1792
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1794
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1796
    :cond_0
    return-void
.end method

.method private ensureMapKeyIsMutable()V
    .locals 2

    .prologue
    .line 1917
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1918
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1919
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1921
    :cond_0
    return-void
.end method

.method private ensureMapValueIsMutable()V
    .locals 2

    .prologue
    .line 2042
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 2044
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2046
    :cond_0
    return-void
.end method

.method private mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1663
    const/4 v2, 0x0

    .line 1665
    .local v2, "parsedMessage":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :try_start_0
    sget-object v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    if-eqz v2, :cond_0

    .line 1671
    invoke-virtual {p0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1674
    :cond_0
    return-object p0

    .line 1666
    :catch_0
    move-exception v1

    .line 1667
    .local v1, "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object v2, v0

    .line 1668
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    .end local v1    # "e":Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1671
    invoke-virtual {p0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    :cond_1
    throw v3
.end method


# virtual methods
.method public final addListItem(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 1843
    if-nez p1, :cond_0

    .line 1844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1846
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1847
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    return-object p0
.end method

.method public final addMapKey(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 1968
    if-nez p1, :cond_0

    .line 1969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1971
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1972
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    return-object p0
.end method

.method public final addMapValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 2093
    if-nez p1, :cond_0

    .line 2094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2096
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2097
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    return-object p0
.end method

.method public final build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2

    .prologue
    .line 1471
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 1472
    .local v0, "result":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    new-instance v1, Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    invoke-direct {v1}, Lcom/google/tagmanager/protobuf/UninitializedMessageException;-><init>()V

    throw v1

    .line 1475
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

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
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1417
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1417
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1624
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    move v1, v2

    .line 1656
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 1624
    goto :goto_0

    .line 1628
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1629
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 1631
    goto :goto_1

    .line 1628
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1634
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1635
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 1637
    goto :goto_1

    .line 1634
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1640
    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1641
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 1643
    goto :goto_1

    .line 1640
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1646
    :cond_7
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1647
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 1649
    goto :goto_1

    .line 1646
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1652
    :cond_9
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 1654
    goto :goto_1

    :cond_a
    move v1, v3

    .line 1656
    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 1540
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1620
    :goto_0
    return-object p0

    .line 1541
    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1544
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1545
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1546
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$400(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1549
    :cond_2
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1550
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1551
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1552
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1559
    :cond_3
    :goto_1
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1560
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1561
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1562
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1569
    :cond_4
    :goto_2
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1570
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1571
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 1572
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1579
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasMacroReference()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1580
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1581
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$800(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    .line 1584
    :cond_6
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasFunctionId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1585
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1586
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$900(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 1589
    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasInteger()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1590
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getInteger()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setInteger(J)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1592
    :cond_8
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1593
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1595
    :cond_9
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1596
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1597
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 1598
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1605
    :cond_a
    :goto_4
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1606
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1607
    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1608
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1615
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasContainsReferences()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1616
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1618
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeExtensionFields(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 1619
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    .line 1554
    :cond_d
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1555
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1564
    :cond_e
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1565
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1574
    :cond_f
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 1575
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1600
    :cond_10
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1601
    :cond_11
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1610
    :cond_12
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1611
    :cond_13
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    # getter for: Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5
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
    .line 1417
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMessageLite;

    .prologue
    .line 1417
    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .end local p1    # "x0":Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

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
    .line 1417
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2365
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2366
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    .line 2368
    return-object p0
.end method

.method public final setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2594
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2595
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    .line 2597
    return-object p0
.end method

.method public final setInteger(J)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2333
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2334
    iput-wide p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    .line 2336
    return-object p0
.end method

.method public final setString(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1758
    if-nez p1, :cond_0

    .line 1759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1761
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1762
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1764
    return-object p0
.end method

.method public final setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .prologue
    .line 1695
    if-nez p1, :cond_0

    .line 1696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1698
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1699
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .line 1701
    return-object p0
.end method
