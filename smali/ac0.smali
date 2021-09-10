.class Lac0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw;


# instance fields
.field final synthetic a:Lbc0$a;

.field final synthetic b:Lbc0;


# direct methods
.method constructor <init>(Lbc0;Lbc0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lac0;->b:Lbc0;

    iput-object p2, p0, Lac0;->a:Lbc0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lac0;->a:Lbc0$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/camerasideas/collagemaker/activity/e;

    .line 3
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/e;->a:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->i(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lac0;->b:Lbc0;

    invoke-static {p1, v0}, Lbc0;->b(Lbc0;Z)Z

    return-void
.end method
