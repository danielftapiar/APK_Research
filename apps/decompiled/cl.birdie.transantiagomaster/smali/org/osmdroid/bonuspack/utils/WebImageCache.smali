.class public final Lorg/osmdroid/bonuspack/utils/WebImageCache;
.super Ljava/lang/Object;
.source "WebImageCache.java"


# instance fields
.field mCacheMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x12c

    iput v0, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCapacity:I

    .line 18
    new-instance v0, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;-><init>(Lorg/osmdroid/bonuspack/utils/WebImageCache;)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCacheMap:Ljava/util/LinkedHashMap;

    .line 24
    return-void
.end method
