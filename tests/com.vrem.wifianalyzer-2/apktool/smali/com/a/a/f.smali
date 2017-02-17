.class public Lcom/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 4

    iget-wide v0, p0, Lcom/a/a/f;->b:D

    iget-wide v2, p0, Lcom/a/a/f;->a:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public a(DDDD)V
    .locals 1

    iput-wide p1, p0, Lcom/a/a/f;->a:D

    iput-wide p5, p0, Lcom/a/a/f;->b:D

    iput-wide p3, p0, Lcom/a/a/f;->c:D

    iput-wide p7, p0, Lcom/a/a/f;->d:D

    return-void
.end method

.method public b()D
    .locals 4

    iget-wide v0, p0, Lcom/a/a/f;->d:D

    iget-wide v2, p0, Lcom/a/a/f;->c:D

    sub-double/2addr v0, v2

    return-wide v0
.end method
