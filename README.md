# Simple Demo Video Script - Google OAuth Verification

## Video Duration: 4-5 minutes

---

## PREPARATION (Before Recording)

1. Sign out of all Google accounts in your browser
2. Have ready:
   - Mentor test account credentials
   - Mentee test account credentials
   - Google account for OAuth (can be any Gmail account)
3. Set Google account language to English
4. Close all unnecessary tabs
5. Clear browser notifications

---

## RECORDING SCRIPT

### 1. INTRODUCTION (20 seconds)
**Action**: Show homepage

**Say**: "This is [Your App Name], a mentorship platform. I'll demonstrate how mentors connect their Google Calendar to automatically generate Google Meet links for sessions."

---

### 2. SIGN IN AS MENTOR (30 seconds)
**Action**:
- Click "Sign In"
- Enter mentor credentials
- Log in

**Say**: "First, I'll sign in as a mentor who wants to connect their Google Calendar."

---

### 3. GO TO AVAILABILITY SETTINGS (20 seconds)
**Action**:
- Navigate to Expert/Availability page
- Show the page with "Connect Google Calendar" button

**Say**: "In the availability settings, there's an option to connect Google Calendar. This allows automatic creation of meeting links."

---

### 4. START OAUTH FLOW (10 seconds)
**Action**:
- Click "Connect Google Calendar" button
- Wait for redirect to Google

**Say**: "I'll click Connect Google Calendar to begin the OAuth process."

---

### 5. OAUTH CONSENT SCREEN - CRITICAL! (90 seconds)
**Action**:
- **SLOW DOWN HERE**
- Select Google account (if prompted)
- Show the full consent screen
- **Point to language selector** (bottom-left) - verify it says "English"
- **Slowly scroll through all permissions**

**Say**:
"Here's the Google OAuth consent screen. Notice the language is set to English at the bottom left.

The app requests these permissions:

FIRST: Full calendar access - this allows creating calendar events in the mentor's calendar.

SECOND: Calendar events permission - this enables adding Google Meet links to those events.

THIRD: Email and profile - to identify the user.

These permissions let our platform automatically create calendar events with Google Meet links when mentees book sessions. The mentor only authenticates once."

**Action**: Click "Continue" or "Allow"

---

### 6. CALLBACK SUCCESS (30 seconds)
**Action**:
- Wait for redirect back to your app
- Show success message
- Show "Connected" status

**Say**: "After approving, I'm redirected back. The calendar is now connected, as shown by this status indicator."

---

### 7. SIGN OUT & SWITCH TO MENTEE (20 seconds)
**Action**:
- Sign out
- Sign in with mentee account

**Say**: "Now I'll sign in as a mentee to book a session and see the Google Meet link generation in action."

---

### 8. BROWSE MENTORS & SELECT SERVICE (30 seconds)
**Action**:
- Browse mentor profiles
- Click on the mentor who just connected calendar
- Select a service/session type

**Say**: "I'll browse mentors and select the one who just connected their Google Calendar. Then I'll choose a service to book."

---

### 9. BOOK A SESSION (45 seconds)
**Action**:
- Select available time slot
- Fill in booking details (if needed)
- Complete booking
- **SHOW the confirmation page with Google Meet link**

**Say**: "I'll select an available time slot and complete the booking. Notice that a Google Meet link is automatically generated and displayed here."

---

### 10. VERIFY IN GOOGLE CALENDAR (60 seconds)
**Action**:
- Open new tab
- Go to https://calendar.google.com
- Log in with the mentor's Google account
- Find the newly created event
- Click on it to show details
- **Show the Google Meet link in the event**
- Show attendees (mentor and mentee emails)

**Say**: "Let me verify this in Google Calendar. I'll open the mentor's calendar... Here's the event that was just created. It shows:
- The session title
- Correct date and time
- Both mentor and mentee as attendees
- And the Google Meet link that was automatically generated

This proves our application successfully uses the Calendar API to create events and generate Meet links."

---

### 11. CONCLUSION (15 seconds)
**Action**: Show application dashboard or summary

**Say**: "This demonstrates our complete Google Calendar OAuth integration. Mentors connect once, and the platform automatically handles all meeting links. Thank you."

---

## CRITICAL CHECKLIST WHILE RECORDING

### Scene 5 (OAuth Consent) - MOST IMPORTANT
- [ ] Show ENTIRE consent screen clearly
- [ ] Language shows "English" (bottom-left corner)
- [ ] All 4 scopes are visible:
  - Calendar access
  - Calendar events
  - Email
  - Profile
- [ ] Read each permission OUT LOUD
- [ ] Spend at least 60-90 seconds on this screen
- [ ] Click "Allow" clearly visible

### Scene 10 (Calendar Verification)
- [ ] Calendar event is clearly visible
- [ ] Google Meet link is shown in the event
- [ ] Attendees are visible
- [ ] Event details match the booking

---

## WHAT TO SAY AT KEY MOMENTS

### When showing consent screen:
"Notice the language is English... The first permission is calendar access... The second is calendar events... Third is email and profile..."

### When showing the Meet link:
"Here's the automatically generated Google Meet link"

### When showing calendar:
"This event was created by our application using the OAuth permissions we just granted"

---

## AFTER RECORDING

1. Watch the entire video
2. Verify these are clearly visible:
   - [ ] OAuth consent screen shows all scopes in English
   - [ ] Google Meet link appears after booking
   - [ ] Calendar event shows in Google Calendar
3. Upload to YouTube as "Unlisted"
4. Test the link works in incognito mode

---

## QUICK TIMING GUIDE

| Scene | Time | Speed |
|-------|------|-------|
| Introduction | 0:00-0:20 | Normal |
| Sign in mentor | 0:20-0:50 | Normal |
| Navigate to settings | 0:50-1:10 | Normal |
| Click connect | 1:10-1:20 | Normal |
| **OAuth consent** | **1:20-2:50** | **SLOW** |
| Callback success | 2:50-3:20 | Normal |
| Switch to mentee | 3:20-3:40 | Quick |
| Book session | 3:40-4:25 | Normal |
| Verify calendar | 4:25-5:25 | Normal |
| Conclusion | 5:25-5:40 | Normal |

**Total: ~5:40 minutes**

---

## EXACT SCOPES TO VERIFY ON SCREEN

When on the OAuth consent screen, you MUST see these exact permissions displayed:

```
✓ See, edit, share, and permanently delete all the calendars you can access using Google Calendar
✓ View and edit events on all your calendars
✓ See your primary Google Account email address
✓ See your personal info, including any personal info you've made publicly available
```

If you don't see these exact descriptions, your scopes might not be configured correctly.

---

## TROUBLESHOOTING

**Problem**: Consent screen in wrong language
**Fix**: Go to https://myaccount.google.com/language → Set to English → Try again

**Problem**: Meet link doesn't generate
**Fix**: Check that mentor's calendar is connected with green "Connected" badge

**Problem**: Can't see calendar event
**Fix**: Make sure you're logged into Google Calendar with the MENTOR's Google account (the one that granted OAuth permission)

---

## UPLOAD INSTRUCTIONS

1. **YouTube**:
   - Upload video
   - Set to "Unlisted" (NOT Private)
   - Title: "Google Calendar OAuth Demo - [Your App Name]"
   - Description: "Demo showing OAuth consent flow and Google Calendar API integration"

2. **Test**:
   - Copy the video URL
   - Open incognito/private browser
   - Paste URL - video should play without login

3. **Submit**:
   - Use this URL in Google OAuth verification form
   - List exact scopes shown in video
   - Submit!

---

## ONE-PAGE CHEAT SHEET

**BEFORE**: Sign out all Google accounts, prepare test accounts, set language to English

**SCENE 1-4**: Show app → Sign in mentor → Go to settings → Click connect (2 min)

**SCENE 5**: ⚠️ CRITICAL ⚠️ OAuth screen - SLOW, show English, read all 4 scopes (90 sec)

**SCENE 6**: Success redirect, show connected status (30 sec)

**SCENE 7-9**: Sign in mentee → Browse mentor → Book session → Show Meet link (95 sec)

**SCENE 10**: Open Google Calendar → Show event → Show Meet link in event (60 sec)

**SCENE 11**: Conclusion (15 sec)

**AFTER**: Upload to YouTube Unlisted, test in incognito, submit URL

---

## SUCCESS CHECKLIST

Your video passes if reviewers can see:
- [x] Complete OAuth flow from clicking "Connect" to success
- [x] Full consent screen with "English" visible
- [x] All 4 permission scopes clearly shown
- [x] Booking creates Google Meet link
- [x] Calendar event appears in Google Calendar with Meet link

**THAT'S IT! Keep it simple, take your time on the consent screen, and show the end result clearly.**
