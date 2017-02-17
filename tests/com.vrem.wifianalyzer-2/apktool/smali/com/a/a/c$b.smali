.class public final Lcom/a/a/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:Landroid/graphics/Paint$Align;

.field public c:Landroid/graphics/Paint$Align;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:F

.field public k:I

.field public l:F

.field public m:I

.field public n:F

.field o:Z

.field p:Z

.field q:Lcom/a/a/c$a;

.field r:I

.field s:Lcom/a/a/c$c;

.field final synthetic t:Lcom/a/a/c;


# direct methods
.method public constructor <init>(Lcom/a/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/c$b;->t:Lcom/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/a/a/c$c;->b:Lcom/a/a/c$c;

    iput-object v0, p0, Lcom/a/a/c$b;->s:Lcom/a/a/c$c;

    return-void
.end method
