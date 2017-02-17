.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;


# instance fields
.field private final kp:Lcom/google/android/gms/internal/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/as;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/ads/AdRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/as;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/as$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/as;-><init>(Lcom/google/android/gms/internal/as$a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kp:Lcom/google/android/gms/internal/as;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/ads/AdRequest$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method final O()Lcom/google/android/gms/internal/as;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kp:Lcom/google/android/gms/internal/as;

    return-object v0
.end method
