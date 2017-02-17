.class public Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;
.super Ljava/lang/Object;
.source "QrLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;


# static fields
.field private static final BLACK:I = -0x1000000

.field public static CODE_QR_READ:I = 0x0

.field public static final TAG:Ljava/lang/String; = "QR"

.field private static final WHITE:I = -0x1


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x4da

    sput v0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->CODE_QR_READ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 141
    const-string v0, "UTF-8"

    return-object v0
.end method


# virtual methods
.method public generateBarcode(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;II)I
    .locals 22
    .param p1, "barcodeText"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "handler"    # Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;
    .param p4, "dimensionWidth"    # I
    .param p5, "dimensionHeight"    # I

    .prologue
    .line 147
    const/4 v7, 0x0

    .line 149
    .local v7, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 150
    .local v17, "encoding":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 151
    new-instance v7, Ljava/util/Hashtable;

    .end local v7    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 152
    .restart local v7    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    new-instance v2, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 157
    .local v2, "writer":Lcom/google/zxing/MultiFormatWriter;
    :try_start_0
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v19

    .line 158
    .local v19, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 159
    .local v11, "width":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v15

    .line 160
    .local v15, "height":I
    mul-int v3, v11, v15

    new-array v9, v3, [I

    .line 162
    .local v9, "pixels":[I
    const/16 v21, 0x0

    .local v21, "y":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v15, :cond_3

    .line 163
    mul-int v18, v21, v11

    .line 164
    .local v18, "offset":I
    const/16 v20, 0x0

    .local v20, "x":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v11, :cond_2

    .line 165
    add-int v4, v18, v20

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, -0x1000000

    :goto_2
    aput v3, v9, v4

    .line 164
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 165
    :cond_1
    const/4 v3, -0x1

    goto :goto_2

    .line 162
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 169
    .end local v18    # "offset":I
    .end local v20    # "x":I
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 170
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v11

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 172
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v8}, Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;->addImage(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v3, 0x0

    .line 176
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "pixels":[I
    .end local v11    # "width":I
    .end local v15    # "height":I
    .end local v19    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v21    # "y":I
    :goto_3
    return v3

    .line 174
    :catch_0
    move-exception v16

    .line 176
    .local v16, "e":Lcom/google/zxing/WriterException;
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public generateQr(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;I)I
    .locals 22
    .param p1, "textQr"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "handler"    # Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;
    .param p4, "dimension"    # I

    .prologue
    .line 42
    const/4 v7, 0x0

    .line 43
    .local v7, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 44
    .local v17, "encoding":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 45
    new-instance v7, Ljava/util/Hashtable;

    .end local v7    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 46
    .restart local v7    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    new-instance v2, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 51
    .local v2, "writer":Lcom/google/zxing/MultiFormatWriter;
    :try_start_0
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v19

    .line 52
    .local v19, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 53
    .local v11, "width":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v15

    .line 54
    .local v15, "height":I
    mul-int v3, v11, v15

    new-array v9, v3, [I

    .line 56
    .local v9, "pixels":[I
    const/16 v21, 0x0

    .local v21, "y":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v15, :cond_3

    .line 57
    mul-int v18, v21, v11

    .line 58
    .local v18, "offset":I
    const/16 v20, 0x0

    .local v20, "x":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v11, :cond_2

    .line 59
    add-int v4, v18, v20

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, -0x1000000

    :goto_2
    aput v3, v9, v4

    .line 58
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 59
    :cond_1
    const/4 v3, -0x1

    goto :goto_2

    .line 56
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 63
    .end local v18    # "offset":I
    .end local v20    # "x":I
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 64
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v11

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v8}, Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;->addImage(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v3, 0x0

    .line 70
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "pixels":[I
    .end local v11    # "width":I
    .end local v15    # "height":I
    .end local v19    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v21    # "y":I
    :goto_3
    return v3

    .line 68
    :catch_0
    move-exception v16

    .line 70
    .local v16, "e":Lcom/google/zxing/WriterException;
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public readQr(ILjava/lang/String;)I
    .locals 11
    .param p1, "timeout"    # I
    .param p2, "formatsToFilter"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 76
    iget-object v6, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 77
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "android.hardware.camera"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.hardware.camera.front"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    :cond_0
    const-string v6, "103"

    invoke-static {v6}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->responseFail(Ljava/lang/String;)V

    .line 80
    :cond_1
    move v5, p1

    .line 81
    .local v5, "timeoutfinal":I
    move-object v0, p2

    .line 82
    .local v0, "formatsToFilterFinal":Ljava/lang/String;
    sget v4, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->CODE_QR_READ:I

    .line 83
    .local v4, "requestCodeFinal":I
    new-instance v2, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;

    invoke-direct {v2, p0, v5, v0}, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;-><init>(Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;ILjava/lang/String;)V

    .line 95
    .local v2, "permissionListener":Lnet/veritran/vtuserapplication/model/PermissionListener;
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "android.permission.CAMERA"

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v2, v4, v8}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, "permissionGrantedCamera":Z
    return v10
.end method

.method public readQrImplement(ILjava/lang/String;)I
    .locals 8
    .param p1, "timeout"    # I
    .param p2, "formatsToFilter"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v5, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 102
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Lcom/google/zxing/integration/android/IntentIntegrator;

    iget-object v5, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 104
    .local v2, "ii":Lcom/google/zxing/integration/android/IntentIntegrator;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "possibleFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    const-string v5, "\\|"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v6, "QR"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    sget-object v6, Lcom/google/zxing/integration/android/IntentIntegrator;->QR_CODE_TYPES:Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 111
    :cond_1
    const-string v6, "BARCODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    sget-object v6, Lcom/google/zxing/integration/android/IntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 113
    :cond_2
    const-string v6, "CODE_39"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "CODE_93"

    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "CODE_128"

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "EAN_8"

    .line 116
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "EAN_13"

    .line 117
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "ITF"

    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "RSS_14"

    .line 119
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "RSS_EXPANDED"

    .line 120
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "UPC_A"

    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "UPC_E"

    .line 122
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .end local v4    # "possibleFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    int-to-long v6, p1

    invoke-virtual {v2, v4, v6, v7}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan(Ljava/util/Collection;J)Landroid/app/AlertDialog;

    .line 130
    const/4 v5, 0x2

    return v5

    .line 128
    .restart local v4    # "possibleFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 36
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->activity:Landroid/app/Activity;

    .line 37
    return-void
.end method
