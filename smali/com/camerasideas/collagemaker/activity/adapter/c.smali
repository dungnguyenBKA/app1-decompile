.class public final synthetic Lcom/camerasideas/collagemaker/activity/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/adapter/p;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/adapter/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/c;->b:Lcom/camerasideas/collagemaker/activity/adapter/p;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/c;->b:Lcom/camerasideas/collagemaker/activity/adapter/p;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/p;->B(Landroid/view/View;)V

    return-void
.end method
