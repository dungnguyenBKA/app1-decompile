.class public final synthetic Lcom/camerasideas/collagemaker/activity/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/x0;

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/x0;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/y;->b:Lcom/camerasideas/collagemaker/activity/x0;

    iput-wide p2, p0, Lcom/camerasideas/collagemaker/activity/y;->c:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/y;->b:Lcom/camerasideas/collagemaker/activity/x0;

    iget-wide v1, p0, Lcom/camerasideas/collagemaker/activity/y;->c:D

    .line 1
    iget-object v3, v0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/activity/MainActivity;->y(Lcom/camerasideas/collagemaker/activity/MainActivity;)Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 2
    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/x0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->y(Lcom/camerasideas/collagemaker/activity/MainActivity;)Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    move-result-object v0

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;->y1(I)V

    :cond_0
    return-void
.end method
