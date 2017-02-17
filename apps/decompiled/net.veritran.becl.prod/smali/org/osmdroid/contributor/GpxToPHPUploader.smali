.class public Lorg/osmdroid/contributor/GpxToPHPUploader;
.super Ljava/lang/Object;
.source "GpxToPHPUploader.java"


# static fields
.field protected static final UPLOADSCRIPT_URL:Ljava/lang/String; = "http://www.PLACEYOURDOMAINHERE.com/anyfolder/gpxuploader/upload.php"

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/osmdroid/contributor/GpxToPHPUploader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/contributor/GpxToPHPUploader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/osmdroid/contributor/GpxToPHPUploader;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static uploadAsync(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "recordedGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/contributor/util/RecordedGeoPoint;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/osmdroid/contributor/GpxToPHPUploader$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/contributor/GpxToPHPUploader$1;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method
