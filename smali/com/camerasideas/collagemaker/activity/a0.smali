.class public final synthetic Lcom/camerasideas/collagemaker/activity/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/MainActivity;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/MainActivity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/a0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    iput-wide p2, p0, Lcom/camerasideas/collagemaker/activity/a0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/a0;->b:Lcom/camerasideas/collagemaker/activity/MainActivity;

    iget-wide v1, p0, Lcom/camerasideas/collagemaker/activity/a0;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/MainActivity;->B(J)V

    return-void
.end method
