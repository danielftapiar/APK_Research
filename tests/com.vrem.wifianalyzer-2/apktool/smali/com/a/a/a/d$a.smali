.class final Lcom/a/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/d;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:F

.field private f:I


# direct methods
.method private constructor <init>(Lcom/a/a/a/d;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/a/a/a/d$a;->a:Lcom/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/a/a/a/d$a;->b:I

    iput-boolean v1, p0, Lcom/a/a/a/d$a;->c:Z

    iput-boolean v1, p0, Lcom/a/a/a/d$a;->d:Z

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/a/a/a/d$a;->e:F

    const/16 v0, 0x64

    const/16 v1, 0xac

    const/16 v2, 0xda

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/d$a;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/d;Lcom/a/a/a/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/a/d$a;-><init>(Lcom/a/a/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/d$a;)I
    .locals 1

    iget v0, p0, Lcom/a/a/a/d$a;->b:I

    return v0
.end method

.method static synthetic a(Lcom/a/a/a/d$a;I)I
    .locals 0

    iput p1, p0, Lcom/a/a/a/d$a;->b:I

    return p1
.end method

.method static synthetic a(Lcom/a/a/a/d$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a/a/d$a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/a/a/a/d$a;)I
    .locals 1

    iget v0, p0, Lcom/a/a/a/d$a;->f:I

    return v0
.end method

.method static synthetic c(Lcom/a/a/a/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/d$a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/a/a/a/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/d$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/a/a/a/d$a;)F
    .locals 1

    iget v0, p0, Lcom/a/a/a/d$a;->e:F

    return v0
.end method
