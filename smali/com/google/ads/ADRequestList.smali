.class public Lcom/google/ads/ADRequestList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Llb0;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADMOB_B_H:Ljava/lang/String; = "a-b-h"

.field public static final ADMOB_B_M:Ljava/lang/String; = "a-b-m"

.field public static final ADMOB_B_R:Ljava/lang/String; = "a-b-r"

.field public static final ADMOB_I_H:Ljava/lang/String; = "a-i-h"

.field public static final ADMOB_I_M:Ljava/lang/String; = "a-i-m"

.field public static final ADMOB_I_R:Ljava/lang/String; = "a-i-r"

.field public static final ADMOB_N_H:Ljava/lang/String; = "a-n-h"

.field public static final ADMOB_N_M:Ljava/lang/String; = "a-n-m"

.field public static final ADMOB_N_R:Ljava/lang/String; = "a-n-r"

.field public static final ADMOB_V_H:Ljava/lang/String; = "a-v-h"

.field public static final ADMOB_V_M:Ljava/lang/String; = "a-v-m"

.field public static final ADMOB_V_R:Ljava/lang/String; = "a-v-r"

.field public static final ALIBABA:Ljava/lang/String; = "alibaba"

.field public static final AMAZON:Ljava/lang/String; = "amazon"

.field public static final FAN_B_H:Ljava/lang/String; = "f-b-h"

.field public static final FAN_B_R:Ljava/lang/String; = "f-b-r"

.field public static final FAN_I_H:Ljava/lang/String; = "f-i-h"

.field public static final FAN_I_R:Ljava/lang/String; = "f-i-r"

.field public static final FAN_N_H:Ljava/lang/String; = "f-n-h"

.field public static final FAN_N_R:Ljava/lang/String; = "f-n-r"

.field public static final FAN_V_H:Ljava/lang/String; = "f-v-h"

.field public static final FAN_V_R:Ljava/lang/String; = "f-v-r"

.field public static final HW_BANNER:Ljava/lang/String; = "hw-b"

.field public static final HW_INTERSTITIAL:Ljava/lang/String; = "hw-i"

.field public static final HW_NATIVE:Ljava/lang/String; = "hw-n"

.field public static final HW_VIDEO:Ljava/lang/String; = "hw-v"

.field public static final MOPUB:Ljava/lang/String; = "mop"

.field public static final ORDER_H:Ljava/lang/String; = "h"

.field public static final ORDER_M:Ljava/lang/String; = "m"

.field public static final ORDER_NULL:Ljava/lang/String; = "n"

.field public static final ORDER_R:Ljava/lang/String; = "r"

.field public static final SELF:Ljava/lang/String; = "s"

.field public static final SMAATO_BANNER:Ljava/lang/String; = "smt-b"

.field public static final SMAATO_INTERSTITIAL:Ljava/lang/String; = "smt-i"

.field public static final SMAATO_NATIVE:Ljava/lang/String; = "smt-n"

.field public static final SMAATO_VIDEO:Ljava/lang/String; = "smt-v"

.field public static final UNITY:Ljava/lang/String; = "unity"

.field public static final VK:Ljava/lang/String; = "vk"

.field public static final VUNGLE:Ljava/lang/String; = "vg"

.field public static final VUNGLE_BANNER:Ljava/lang/String; = "vg-b"


# instance fields
.field private listener:Lsb0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsb0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/ads/ADRequestList;->listener:Lsb0;

    return-void
.end method


# virtual methods
.method public getADListener()Lsb0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/ADRequestList;->listener:Lsb0;

    return-object v0
.end method

.method public setADListener(Lsb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/ADRequestList;->listener:Lsb0;

    return-void
.end method
