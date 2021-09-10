.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/gtm/zzfi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Lcom/google/android/gms/internal/gtm/zzfi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzfi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Lcom/google/android/gms/internal/gtm/zzfi;

    .line 1
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzfi;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
