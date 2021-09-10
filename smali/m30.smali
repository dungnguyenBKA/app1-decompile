.class public Lm30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld10;


# direct methods
.method constructor <init>(Ld10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm30;->a:Ld10;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lt30;
    .locals 2

    const-string v0, "settings_version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lh30;

    invoke-direct {v0}, Lh30;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo30;

    invoke-direct {v0}, Lo30;-><init>()V

    .line 4
    :goto_0
    iget-object v1, p0, Lm30;->a:Ld10;

    invoke-interface {v0, v1, p1}, Ln30;->a(Ld10;Lorg/json/JSONObject;)Lt30;

    move-result-object p1

    return-object p1
.end method
