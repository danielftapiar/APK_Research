.class final Lcom/a/a/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Lcom/a/a/e$a;

.field i:Landroid/graphics/Point;

.field final synthetic j:Lcom/a/a/e;


# direct methods
.method private constructor <init>(Lcom/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e$b;->j:Lcom/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/e;Lcom/a/a/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/e$b;-><init>(Lcom/a/a/e;)V

    return-void
.end method
