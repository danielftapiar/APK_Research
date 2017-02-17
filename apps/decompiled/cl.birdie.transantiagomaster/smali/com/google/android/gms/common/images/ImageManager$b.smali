.class final Lcom/google/android/gms/common/images/ImageManager$b;
.super Lcom/google/android/gms/internal/fu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fu",
        "<",
        "Lcom/google/android/gms/common/images/a$a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# virtual methods
.method protected final synthetic sizeOf$2838e5a0(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
