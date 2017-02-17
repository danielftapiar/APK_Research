.class public final Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

.field private static volatile eagerlyParseMessageSets:Z


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/tagmanager/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    sput-boolean v1, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 131
    new-instance v0, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;-><init>(B)V

    sput-object v0, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 113
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public static getEmptyRegistry()Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

    return-object v0
.end method


# virtual methods
.method public final findLiteExtensionByNumber(Lcom/google/tagmanager/protobuf/MessageLite;I)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/tagmanager/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;*>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "containingTypeDefaultInstance":Lcom/google/tagmanager/protobuf/MessageLite;, "TContainingType;"
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0
.end method
