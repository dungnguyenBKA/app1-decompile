.class public Lcom/camerasideas/collagemaker/activity/adapter/g;
.super Lsr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsr<",
        "Lcom/android/billingclient/api/j;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x0

    const v0, 0x7f0b0069

    .line 1
    invoke-direct {p0, v0, p1}, Lsr;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/android/billingclient/api/j;

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/j;->c()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f080209

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
