.class final Lorg/osmdroid/bonuspack/utils/WebImageCache$1;
.super Ljava/util/LinkedHashMap;
.source "WebImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/bonuspack/utils/WebImageCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/bonuspack/utils/WebImageCache;


# direct methods
.method constructor <init>(Lorg/osmdroid/bonuspack/utils/WebImageCache;)V
    .locals 3

    .prologue
    .line 1
    iput-object p1, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;->this$0:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    .line 18
    const/16 v0, 0x12d

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;->this$0:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    iget v1, v1, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
