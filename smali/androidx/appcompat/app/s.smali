.class Landroidx/appcompat/app/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/s$a;
    }
.end annotation


# static fields
.field private static d:Landroidx/appcompat/app/s;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;

.field private final c:Landroidx/appcompat/app/s$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/app/s$a;

    invoke-direct {v0}, Landroidx/appcompat/app/s$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/s;->c:Landroidx/appcompat/app/s$a;

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/s;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/appcompat/app/s;->b:Landroid/location/LocationManager;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/s;
    .locals 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/s;->d:Landroidx/appcompat/app/s;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    new-instance v0, Landroidx/appcompat/app/s;

    const-string v1, "location"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/s;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Landroidx/appcompat/app/s;->d:Landroidx/appcompat/app/s;

    .line 5
    :cond_0
    sget-object p0, Landroidx/appcompat/app/s;->d:Landroidx/appcompat/app/s;

    return-object p0
.end method


# virtual methods
.method b()Z
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/appcompat/app/s;->c:Landroidx/appcompat/app/s$a;

    .line 2
    iget-wide v2, v1, Landroidx/appcompat/app/s$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget-boolean v1, v1, Landroidx/appcompat/app/s$a;->a:Z

    return v1

    .line 4
    :cond_1
    iget-object v2, v0, Landroidx/appcompat/app/s;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/app/b;->n(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "network"

    .line 5
    :try_start_0
    iget-object v4, v0, Landroidx/appcompat/app/s;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v4, v0, Landroidx/appcompat/app/s;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object v2, v3

    .line 7
    :goto_1
    iget-object v4, v0, Landroidx/appcompat/app/s;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, Landroidx/core/app/b;->n(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "gps"

    .line 8
    :try_start_1
    iget-object v5, v0, Landroidx/appcompat/app/s;->b:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    iget-object v5, v0, Landroidx/appcompat/app/s;->b:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-lez v10, :cond_5

    :goto_3
    move-object v2, v3

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v2, :cond_b

    .line 11
    iget-object v3, v0, Landroidx/appcompat/app/s;->c:Landroidx/appcompat/app/s$a;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 13
    invoke-static {}, Landroidx/appcompat/app/r;->b()Landroidx/appcompat/app/r;

    move-result-object v15

    const-wide/32 v16, 0x5265c00

    sub-long v9, v4, v16

    .line 14
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-object v8, v15

    .line 15
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/r;->a(JDD)V

    .line 16
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-wide v9, v4

    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/r;->a(JDD)V

    .line 17
    iget v8, v15, Landroidx/appcompat/app/r;->c:I

    if-ne v8, v7, :cond_6

    const/4 v6, 0x1

    .line 18
    :cond_6
    iget-wide v13, v15, Landroidx/appcompat/app/r;->b:J

    .line 19
    iget-wide v11, v15, Landroidx/appcompat/app/r;->a:J

    add-long v9, v4, v16

    .line 20
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v8, v15

    move-wide/from16 v20, v11

    move-wide/from16 v11, v16

    move-wide/from16 v16, v13

    move-wide/from16 v13, v18

    .line 21
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/r;->a(JDD)V

    .line 22
    iget-wide v7, v15, Landroidx/appcompat/app/r;->b:J

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    cmp-long v2, v16, v11

    if-eqz v2, :cond_a

    cmp-long v2, v20, v11

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    cmp-long v2, v4, v20

    if-lez v2, :cond_8

    add-long/2addr v7, v9

    goto :goto_5

    :cond_8
    cmp-long v2, v4, v16

    if-lez v2, :cond_9

    add-long v7, v20, v9

    goto :goto_5

    :cond_9
    add-long v7, v16, v9

    :goto_5
    const-wide/32 v4, 0xea60

    add-long/2addr v7, v4

    goto :goto_7

    :cond_a
    :goto_6
    const-wide/32 v7, 0x2932e00

    add-long/2addr v7, v4

    .line 23
    :goto_7
    iput-boolean v6, v3, Landroidx/appcompat/app/s$a;->a:Z

    .line 24
    iput-wide v7, v3, Landroidx/appcompat/app/s$a;->b:J

    .line 25
    iget-boolean v1, v1, Landroidx/appcompat/app/s$a;->a:Z

    return v1

    :cond_b
    const-string v1, "TwilightManager"

    const-string v2, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_c

    const/16 v2, 0x16

    if-lt v1, v2, :cond_d

    :cond_c
    const/4 v6, 0x1

    :cond_d
    return v6
.end method
