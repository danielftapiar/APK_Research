.class public Lcom/vrem/wifianalyzer/c/b/c/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vrem/wifianalyzer/c/b/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "d"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/a/a/e;->a(Z)V

    sget-object v0, Lcom/a/a/e$a;->a:Lcom/a/a/e$a;

    invoke-virtual {p1, v0}, Lcom/a/a/e;->a(Lcom/a/a/e$a;)V

    return-void
.end method
