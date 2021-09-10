.class Lw00;
.super Lorg/json/JSONObject;
.source "SourceFile"


# instance fields
.field final synthetic a:Le10;


# direct methods
.method constructor <init>(Le10;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lw00;->a:Le10;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Le10;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
