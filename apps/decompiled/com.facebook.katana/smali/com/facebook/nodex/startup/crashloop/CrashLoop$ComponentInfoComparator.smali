.class Lcom/facebook/nodex/startup/crashloop/CrashLoop$ComponentInfoComparator;
.super Ljava/lang/Object;
.source "CrashLoop.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ComponentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/facebook/nodex/startup/crashloop/CrashLoop$ComponentInfoComparator;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;)I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 329
    check-cast p1, Landroid/content/pm/ComponentInfo;

    check-cast p2, Landroid/content/pm/ComponentInfo;

    invoke-static {p1, p2}, Lcom/facebook/nodex/startup/crashloop/CrashLoop$ComponentInfoComparator;->a(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;)I

    move-result v0

    return v0
.end method
