.class Lyp$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyp;


# direct methods
.method constructor <init>(Lyp;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyp$b;->a:Lyp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x21

    if-eq v0, v2, :cond_5

    const/16 v2, 0xf0

    if-eq v0, v2, :cond_4

    const/16 v2, 0x31

    const/4 v4, 0x2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x32

    if-eq v0, v2, :cond_2

    const/16 v2, 0x41

    const/4 v4, 0x3

    if-eq v0, v2, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lyp$b;->a:Lyp;

    invoke-static {v0}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lyp$e;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lyp$b;->a:Lyp;

    invoke-static {v0}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lyp$e;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lyp$b;->a:Lyp;

    invoke-static {v0}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lyp$e;->u(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Lyp$b;->a:Lyp;

    invoke-static {v0}, Lyp;->s(Lyp;)Lyp$e;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lyp$e;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1, v4, v3}, Lyp;->r(Lyp;IZ)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1, v4, v1}, Lyp;->r(Lyp;IZ)V

    goto/16 :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1, v4, v3}, Lyp;->r(Lyp;IZ)V

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1, v4, v1}, Lyp;->r(Lyp;IZ)V

    goto/16 :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lyp$b;->a:Lyp;

    const/4 v0, -0x1

    invoke-static {p1, v0, v3}, Lyp;->r(Lyp;IZ)V

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1, v1, v1}, Lyp;->r(Lyp;IZ)V

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    .line 13
    check-cast p1, Lorg/json/JSONObject;

    .line 14
    :try_start_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LocalCutoutBgPackageVersion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "cutoutBgStartVersion"

    .line 16
    iget-object v2, p0, Lyp$b;->a:Lyp;

    invoke-static {v2}, Lyp;->t(Lyp;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lyp$b;->a:Lyp;

    invoke-static {v2}, Lyp;->t(Lyp;)I

    move-result v2

    if-gt v1, v2, :cond_7

    const-string v1, "cutoutBg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_8

    :cond_7
    if-nez v0, :cond_9

    .line 17
    :cond_8
    iget-object v0, p0, Lyp$b;->a:Lyp;

    invoke-static {v0}, Lyp;->u(Lyp;)V

    .line 18
    :cond_9
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LocalFontPackageVersion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "fontStartVersion"

    .line 20
    iget-object v2, p0, Lyp$b;->a:Lyp;

    invoke-static {v2}, Lyp;->t(Lyp;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lyp$b;->a:Lyp;

    invoke-static {v2}, Lyp;->t(Lyp;)I

    move-result v2

    if-gt v1, v2, :cond_a

    const-string v1, "font"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_b

    :cond_a
    if-nez v0, :cond_c

    .line 21
    :cond_b
    iget-object v0, p0, Lyp$b;->a:Lyp;

    invoke-static {v0}, Lyp;->v(Lyp;)V

    .line 22
    :cond_c
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LocalCutoutShapePackageVersion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "shapeStartVersion"

    .line 24
    iget-object v2, p0, Lyp$b;->a:Lyp;

    invoke-static {v2}, Lyp;->t(Lyp;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lyp$b;->a:Lyp;

    invoke-static {v2}, Lyp;->t(Lyp;)I

    move-result v2

    if-gt v1, v2, :cond_d

    const-string v1, "shape"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_e

    :cond_d
    if-nez v0, :cond_10

    .line 25
    :cond_e
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1}, Lyp;->w(Lyp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-static {p1}, Lrq;->m(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 28
    :cond_f
    iget-object p1, p0, Lyp$b;->a:Lyp;

    invoke-static {p1}, Lyp;->j(Lyp;)Lcom/google/billingclient/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/billingclient/g;->v()Lcom/google/billingclient/g;

    :cond_10
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
