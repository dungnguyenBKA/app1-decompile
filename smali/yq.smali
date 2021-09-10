.class Lyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg0;


# instance fields
.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyq;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Log0;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lyq;->b:Landroid/content/Context;

    invoke-static {p1}, Luq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/appdata/f;->j(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Log0;Llh0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Llh0;->j()Lmh0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Llh0;->L()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Llh0;->j()Lmh0;

    move-result-object p1

    invoke-virtual {p1}, Lmh0;->string()Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "countryCode"

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lyq;->b:Landroid/content/Context;

    invoke-static {p1}, Luq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Lyq;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/camerasideas/collagemaker/appdata/f;->j(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    iget-object p1, p0, Lyq;->b:Landroid/content/Context;

    invoke-static {p1}, Luq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/appdata/f;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
