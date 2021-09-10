.class Lcom/google/ads/mediation/adm/Rewarded$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/adm/Rewarded;->showAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/adm/Rewarded;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/adm/Rewarded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adm/Rewarded$3;->this$0:Lcom/google/ads/mediation/adm/Rewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Rewarded$3;->this$0:Lcom/google/ads/mediation/adm/Rewarded;

    invoke-static {v0}, Lcom/google/ads/mediation/adm/Rewarded;->access$200(Lcom/google/ads/mediation/adm/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Rewarded$3;->this$0:Lcom/google/ads/mediation/adm/Rewarded;

    invoke-static {v0}, Lcom/google/ads/mediation/adm/Rewarded;->access$000(Lcom/google/ads/mediation/adm/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_0
    return-void
.end method
