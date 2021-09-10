.class public final synthetic Lcom/camerasideas/collagemaker/activity/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/PolicyActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/PolicyActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/k0;->b:Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/k0;->b:Lcom/camerasideas/collagemaker/activity/PolicyActivity;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
