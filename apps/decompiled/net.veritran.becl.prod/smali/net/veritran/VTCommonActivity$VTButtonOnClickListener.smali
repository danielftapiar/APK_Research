.class public Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTButtonOnClickListener"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private arrayId:Ljava/lang/Integer;

.field private arrayRow:Ljava/lang/Integer;

.field private formId:Ljava/lang/String;

.field final synthetic this$0:Lnet/veritran/VTCommonActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;
    .param p2, "type"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2285
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput p2, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->type:I

    .line 2287
    iput-object p3, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->action:Ljava/lang/String;

    .line 2288
    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTCommonActivity;ILjava/lang/String;II)V
    .locals 1
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;
    .param p2, "type"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "arrayId"    # I
    .param p5, "arrayRow"    # I

    .prologue
    .line 2297
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    iput p2, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->type:I

    .line 2299
    iput-object p3, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->action:Ljava/lang/String;

    .line 2300
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    .line 2301
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayRow:Ljava/lang/Integer;

    .line 2302
    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTCommonActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;
    .param p2, "type"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "formId"    # Ljava/lang/String;

    .prologue
    .line 2290
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2291
    iput p2, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->type:I

    .line 2292
    iput-object p3, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->action:Ljava/lang/String;

    .line 2293
    iput-object p4, p0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->formId:Ljava/lang/String;

    .line 2294
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 47
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2306
    const-string v42, "VTCommonActivity"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Onclick: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->action:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v42, v0

    # getter for: Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;
    invoke-static/range {v42 .. v42}, Lnet/veritran/VTCommonActivity$InputsByArea;->access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .line 2308
    .local v9, "eArea":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/16 v27, 0x1

    .line 2309
    .local v27, "procesarOk":Z
    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    .line 2313
    .local v14, "errorMessages":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->formId:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_e

    .line 2314
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 2315
    .local v5, "dictCheckboxTargetvarChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 2316
    .local v6, "dictCheckboxTargetvarName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 2317
    .local v7, "dictRadioGroupChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 2319
    .local v8, "dictRadioGroupName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 2321
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v43

    const-string v44, "$string"

    const-string v45, "appCheckInputData"

    invoke-virtual/range {v43 .. v45}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2319
    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2324
    .local v24, "msgCheckField":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_a

    .line 2325
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2326
    .local v3, "area":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v42, v0

    # getter for: Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;
    invoke-static/range {v42 .. v42}, Lnet/veritran/VTCommonActivity$InputsByArea;->access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;

    move-result-object v42

    .line 2327
    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 2328
    .local v20, "inputByArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_1
    :goto_0
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/veritran/VisualInputComponent;

    .line 2329
    .local v19, "i":Lnet/veritran/VisualInputComponent;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getFormId()Ljava/lang/String;

    move-result-object v21

    .line 2330
    .local v21, "inputFormId":Ljava/lang/String;
    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->formId:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 2331
    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 2332
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v42

    packed-switch v42, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2336
    :pswitch_1
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v42

    check-cast v42, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v44, "displayName"

    .line 2337
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    .line 2335
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    .line 2339
    .local v26, "name":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v42

    check-cast v42, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v44, "targetvar"

    .line 2340
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2341
    .local v32, "register":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 2342
    .local v33, "registerAsInt":I
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v42

    check-cast v42, Lnet/veritran/component/view/VTTextInterface;

    .line 2343
    invoke-interface/range {v42 .. v42}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2345
    .local v35, "storeValue":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v42

    check-cast v42, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v44, "inputmsg"

    .line 2346
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2347
    .local v22, "inputMsg":Ljava/lang/String;
    if-nez v22, :cond_2

    .line 2348
    move-object/from16 v22, v24

    .line 2349
    :cond_2
    const/16 v42, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v22

    .line 2351
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v42

    check-cast v42, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v44, "required"

    .line 2352
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2353
    .local v34, "required":Ljava/lang/String;
    if-nez v34, :cond_3

    .line 2354
    const-string v34, "false"

    .line 2355
    :cond_3
    const/16 v42, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v34

    .line 2356
    const-string v42, "false"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_6

    .line 2357
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v42

    if-nez v42, :cond_6

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 2363
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v44

    const-string v45, "$string"

    const-string v46, "appFieldRequired"

    invoke-virtual/range {v44 .. v46}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 2361
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    const-string v44, "__1__"

    .line 2364
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2365
    .local v12, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTUserApplicationSmart;->getTextRequired()Ljava/lang/String;

    move-result-object v37

    .line 2366
    .local v37, "text_required":Ljava/lang/String;
    if-eqz v37, :cond_4

    const-string v42, "INLINE"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_5

    .line 2367
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v42

    check-cast v42, Lnet/veritran/component/view/VTTextInterface;

    .line 2368
    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 2370
    :cond_5
    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    const/16 v27, 0x0

    .line 2380
    .end local v12    # "errorMessage":Ljava/lang/String;
    .end local v37    # "text_required":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v42

    if-eqz v42, :cond_7

    .line 2382
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v42

    check-cast v42, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v44, "regexp"

    .line 2383
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2384
    .local v31, "regexp":Ljava/lang/String;
    if-eqz v31, :cond_7

    .line 2385
    const/16 v42, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v31

    .line 2386
    const/16 v23, 0x0

    .line 2388
    .local v23, "match":Z
    :try_start_0
    new-instance v28, Lme/regexp/RE;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lme/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 2389
    .local v28, "r":Lme/regexp/RE;
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lme/regexp/RE;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 2397
    .end local v28    # "r":Lme/regexp/RE;
    :goto_1
    if-nez v23, :cond_7

    .line 2398
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v42

    check-cast v42, Lnet/veritran/component/view/VTTextInterface;

    .line 2399
    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 2400
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    const/16 v27, 0x0

    .line 2406
    .end local v23    # "match":Z
    .end local v31    # "regexp":Ljava/lang/String;
    :cond_7
    if-eqz v27, :cond_1

    .line 2407
    const-string v44, "VTCommonActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Storing "

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 2409
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v42

    check-cast v42, Lnet/veritran/component/view/VTTextInterface;

    .line 2410
    invoke-interface/range {v42 .. v42}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v42

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v45, " on "

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 2413
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v42

    check-cast v42, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v46, "targetvar"

    .line 2414
    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2407
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v33

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2390
    .restart local v23    # "match":Z
    .restart local v31    # "regexp":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 2392
    .local v15, "ex":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    goto/16 :goto_1

    .line 2393
    :catch_1
    move-exception v16

    .line 2394
    .local v16, "ex2":Ljava/lang/Exception;
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 2423
    .end local v15    # "ex":Ljava/lang/Exception;
    .end local v16    # "ex2":Ljava/lang/Exception;
    .end local v22    # "inputMsg":Ljava/lang/String;
    .end local v23    # "match":Z
    .end local v26    # "name":Ljava/lang/String;
    .end local v31    # "regexp":Ljava/lang/String;
    .end local v32    # "register":Ljava/lang/String;
    .end local v33    # "registerAsInt":I
    .end local v34    # "required":Ljava/lang/String;
    .end local v35    # "storeValue":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v40

    check-cast v40, Lnet/veritran/component/VTCheckboxComponent;

    .line 2425
    .local v40, "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    if-eqz v40, :cond_1

    .line 2426
    invoke-virtual/range {v40 .. v40}, Lnet/veritran/component/VTCheckboxComponent;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    .line 2428
    .restart local v26    # "name":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/view/VTUICompoundButtonView;

    .line 2430
    .local v4, "chkView":Lnet/veritran/component/view/VTUICompoundButtonView;
    invoke-virtual/range {v40 .. v40}, Lnet/veritran/component/VTCheckboxComponent;->getRequired()Ljava/lang/Boolean;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_1

    .line 2431
    invoke-virtual/range {v40 .. v40}, Lnet/veritran/component/VTCheckboxComponent;->getTargetvar()Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 2432
    .local v36, "targetvar":Ljava/lang/String;
    const-string v42, ""

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_1

    .line 2433
    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 2434
    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Boolean;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_1

    invoke-interface {v4}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v42

    if-eqz v42, :cond_1

    .line 2435
    :cond_8
    invoke-interface {v4}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2444
    .end local v4    # "chkView":Lnet/veritran/component/view/VTUICompoundButtonView;
    .end local v26    # "name":Ljava/lang/String;
    .end local v36    # "targetvar":Ljava/lang/String;
    .end local v40    # "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    :pswitch_3
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v41

    check-cast v41, Lnet/veritran/component/VTRadioButtonComponent;

    .line 2446
    .local v41, "vtRadio":Lnet/veritran/component/VTRadioButtonComponent;
    if-eqz v41, :cond_1

    .line 2447
    invoke-virtual/range {v41 .. v41}, Lnet/veritran/component/VTRadioButtonComponent;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    .line 2449
    .restart local v26    # "name":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v30

    check-cast v30, Lnet/veritran/component/view/VTRadioButtonComponentView;

    .line 2451
    .local v30, "rbView":Lnet/veritran/component/view/VTRadioButtonComponentView;
    invoke-virtual/range {v41 .. v41}, Lnet/veritran/component/VTRadioButtonComponent;->getRequired()Ljava/lang/Boolean;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_1

    .line 2452
    invoke-virtual/range {v41 .. v41}, Lnet/veritran/component/VTRadioButtonComponent;->getRadioGroup()Ljava/lang/String;

    move-result-object v29

    .line 2453
    .local v29, "radioGroup":Ljava/lang/String;
    const-string v42, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_1

    .line 2454
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 2455
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Boolean;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_1

    invoke-virtual/range {v30 .. v30}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v42

    if-eqz v42, :cond_1

    .line 2456
    :cond_9
    invoke-virtual/range {v30 .. v30}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2469
    .end local v3    # "area":Ljava/lang/String;
    .end local v19    # "i":Lnet/veritran/VisualInputComponent;
    .end local v20    # "inputByArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    .end local v21    # "inputFormId":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v29    # "radioGroup":Ljava/lang/String;
    .end local v30    # "rbView":Lnet/veritran/component/view/VTRadioButtonComponentView;
    .end local v41    # "vtRadio":Lnet/veritran/component/VTRadioButtonComponent;
    :cond_a
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 2470
    .local v10, "eCheckboxGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_b
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_c

    .line 2471
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 2472
    .restart local v36    # "targetvar":Ljava/lang/String;
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Boolean;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_b

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 2478
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v43

    const-string v44, "$string"

    const-string v45, "appFieldRequired"

    invoke-virtual/range {v43 .. v45}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2476
    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    const-string v44, "__1__"

    .line 2479
    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2481
    .restart local v12    # "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v14, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    const/16 v27, 0x0

    goto :goto_2

    .line 2487
    .end local v12    # "errorMessage":Ljava/lang/String;
    .end local v36    # "targetvar":Ljava/lang/String;
    :cond_c
    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v11

    .line 2488
    .local v11, "eRadioGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_d
    :goto_3
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_f

    .line 2489
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 2490
    .restart local v29    # "radioGroup":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Boolean;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_d

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 2496
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v43

    const-string v44, "$string"

    const-string v45, "appFieldRequired"

    invoke-virtual/range {v43 .. v45}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2494
    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    const-string v44, "__1__"

    .line 2497
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2499
    .restart local v12    # "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v14, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    const/16 v27, 0x0

    goto :goto_3

    .line 2503
    .end local v5    # "dictCheckboxTargetvarChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "dictCheckboxTargetvarName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "dictRadioGroupChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "dictRadioGroupName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "eCheckboxGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11    # "eRadioGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v12    # "errorMessage":Ljava/lang/String;
    .end local v24    # "msgCheckField":Ljava/lang/String;
    .end local v29    # "radioGroup":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    move-object/from16 v42, v0

    if-eqz v42, :cond_f

    .line 2504
    const-string v42, "VTCommonActivity"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Marking row "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayRow:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " on array "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->arrayRow:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    .line 2507
    :cond_f
    if-eqz v27, :cond_10

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->action:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 2540
    :goto_4
    return-void

    .line 2510
    :cond_10
    invoke-virtual {v14}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v18

    .line 2511
    .local v18, "fieldsWithError":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v43

    const-string v44, "$string"

    const-string v45, "sys0002"

    invoke-virtual/range {v43 .. v45}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lnet/veritran/VTCommonActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2512
    .local v25, "msnSys0002":Ljava/lang/String;
    const-string v39, ""

    .line 2513
    .local v39, "toastText":Ljava/lang/String;
    const-string v42, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_11

    .line 2515
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v43, v0

    .line 2517
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v44

    const-string v45, "$string"

    const-string v46, "sys0002"

    invoke-virtual/range {v44 .. v46}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 2515
    invoke-virtual/range {v43 .. v44}, Lnet/veritran/VTCommonActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":\n"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 2520
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 2522
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v43

    const-string v44, "$string"

    const-string v45, "appFieldErrorPrefix"

    invoke-virtual/range {v43 .. v45}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2520
    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2524
    .local v13, "errorMessagePrefix":Ljava/lang/String;
    if-nez v13, :cond_12

    .line 2525
    const-string v13, ""

    .line 2526
    :cond_12
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_13

    .line 2527
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2528
    .local v17, "fieldNameWithError":Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "__1__"

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 2529
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 2530
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\n"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 2531
    goto :goto_5

    .line 2532
    .end local v17    # "fieldNameWithError":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTUserApplicationSmart;->getTextRequired()Ljava/lang/String;

    move-result-object v37

    .line 2533
    .restart local v37    # "text_required":Ljava/lang/String;
    if-eqz v37, :cond_14

    const-string v42, "TOAST"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_15

    .line 2534
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    .line 2536
    .local v38, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    .line 2538
    .end local v38    # "toast":Landroid/widget/Toast;
    :cond_15
    new-instance v14, Ljava/util/Hashtable;

    .end local v14    # "errorMessages":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    .restart local v14    # "errorMessages":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_4

    .line 2332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
