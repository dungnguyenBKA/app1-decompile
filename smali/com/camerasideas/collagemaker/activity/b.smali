.class public final synthetic Lcom/camerasideas/collagemaker/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/b;->a:Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/b;->a:Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->o()Z

    const/4 v0, 0x0

    return v0
.end method
