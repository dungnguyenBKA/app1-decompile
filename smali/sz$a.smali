.class final enum Lsz$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsz$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lsz$a;

.field public static final enum c:Lsz$a;

.field public static final enum d:Lsz$a;

.field public static final enum e:Lsz$a;

.field public static final enum f:Lsz$a;

.field public static final enum g:Lsz$a;

.field public static final enum h:Lsz$a;

.field public static final enum i:Lsz$a;

.field public static final enum j:Lsz$a;

.field public static final enum k:Lsz$a;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsz$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lsz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lsz$a;

    const-string v1, "X86_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsz$a;->b:Lsz$a;

    .line 2
    new-instance v1, Lsz$a;

    const-string v3, "X86_64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsz$a;->c:Lsz$a;

    .line 3
    new-instance v3, Lsz$a;

    const-string v5, "ARM_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsz$a;->d:Lsz$a;

    .line 4
    new-instance v5, Lsz$a;

    const-string v7, "PPC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsz$a;->e:Lsz$a;

    .line 5
    new-instance v7, Lsz$a;

    const-string v9, "PPC64"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsz$a;->f:Lsz$a;

    .line 6
    new-instance v9, Lsz$a;

    const-string v11, "ARMV6"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lsz$a;->g:Lsz$a;

    .line 7
    new-instance v11, Lsz$a;

    const-string v13, "ARMV7"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lsz$a;->h:Lsz$a;

    .line 8
    new-instance v13, Lsz$a;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lsz$a;->i:Lsz$a;

    .line 9
    new-instance v15, Lsz$a;

    const-string v14, "ARMV7S"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lsz$a;->j:Lsz$a;

    .line 10
    new-instance v14, Lsz$a;

    const-string v12, "ARM64"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lsz$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lsz$a;->k:Lsz$a;

    const/16 v12, 0xa

    new-array v12, v12, [Lsz$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v1, 0x4

    aput-object v7, v12, v1

    const/4 v2, 0x5

    aput-object v9, v12, v2

    const/4 v2, 0x6

    aput-object v11, v12, v2

    const/4 v2, 0x7

    aput-object v13, v12, v2

    const/16 v2, 0x8

    aput-object v15, v12, v2

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lsz$a;->m:[Lsz$a;

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lsz$a;->l:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    .line 13
    invoke-interface {v2, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "armeabi"

    .line 14
    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arm64-v8a"

    .line 15
    invoke-interface {v2, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x86"

    .line 16
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lsz$a;
    .locals 3

    .line 1
    sget-object v0, Lsz$a;->i:Lsz$a;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-virtual {v1, v2}, Laz;->h(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lsz$a;->l:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsz$a;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsz$a;
    .locals 1

    .line 1
    const-class v0, Lsz$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsz$a;

    return-object p0
.end method

.method public static values()[Lsz$a;
    .locals 1

    .line 1
    sget-object v0, Lsz$a;->m:[Lsz$a;

    invoke-virtual {v0}, [Lsz$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsz$a;

    return-object v0
.end method
