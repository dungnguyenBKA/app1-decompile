.class public final Lcom/google/android/gms/internal/ads/zzjb;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x24

    const-string v1, "AudioTrack write failed: "

    .line 1
    invoke-static {v0, v1, p1}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjb;->errorCode:I

    return-void
.end method
