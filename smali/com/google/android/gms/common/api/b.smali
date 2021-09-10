.class public final Lcom/google/android/gms/common/api/b;
.super Ljava/lang/UnsupportedOperationException;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/common/Feature;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/Feature;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/Feature;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/Feature;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    const-string v2, "Missing "

    invoke-static {v1, v2, v0}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
