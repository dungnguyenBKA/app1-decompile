.class Lzb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhw<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbc0$a;

.field final synthetic b:Lbc0;


# direct methods
.method constructor <init>(Lbc0;Lbc0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzb0;->b:Lbc0;

    iput-object p2, p0, Lzb0;->a:Lbc0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  x "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ad_log"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbc0;->a(J)J

    .line 4
    iget-object p1, p0, Lzb0;->a:Lbc0$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 5
    check-cast p1, Lcom/camerasideas/collagemaker/activity/e;

    .line 6
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/e;->a:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->i(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lzb0;->b:Lbc0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbc0;->b(Lbc0;Z)Z

    return-void
.end method
