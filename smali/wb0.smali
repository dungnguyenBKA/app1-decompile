.class public abstract Lwb0;
.super Lub0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwb0$a;
    }
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lub0;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lwb0;->b:I

    return-void
.end method


# virtual methods
.method protected j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldc0;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    invoke-static {p1, p4, p3, v2}, Lcc0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p3, v2}, Lcc0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 6
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p4, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 9
    new-instance p2, Ldc0;

    invoke-direct {p2, p1, v0}, Ldc0;-><init>(Landroid/content/Context;I)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract k()Z
.end method

.method public abstract l(Landroid/app/Activity;Lwb0$a;)V
.end method
