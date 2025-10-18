# Google OAuth Demo Video Creation Guide

## Overview
This guide will help you create a comprehensive demo video for Google OAuth verification that meets all requirements specified by Google. Your application uses Google Calendar API to enable mentors to connect their Google Calendar and automatically generate Google Meet links for mentorship sessions.

---

## Video Requirements Checklist

### Required Elements
- [ ] Complete end-to-end OAuth flow demonstration
- [ ] Full OAuth consent screen (in English)
- [ ] All requested scopes visible on consent screen
- [ ] Application functionality using the granted scopes
- [ ] Clear narration or text overlay explaining each step

### Technical Requirements
- [ ] Screen recording with clear resolution (1080p recommended)
- [ ] Language setting on consent screen set to English
- [ ] Audio narration or text captions explaining the flow
- [ ] Video duration: 3-5 minutes recommended
- [ ] Publicly accessible video link (YouTube unlisted recommended)

---

## Your Application's OAuth Scopes

Based on your code (app/api/auth/calendar-connect/route.ts:82-87), your application requests:

```
https://www.googleapis.com/auth/calendar
https://www.googleapis.com/auth/calendar.events
email
profile
```

**IMPORTANT**: Ensure these exact scopes appear in:
1. Your Google Cloud Console OAuth configuration
2. The consent screen during recording
3. Your verification submission

---

## Demo Video Script

### Scene 1: Introduction (15-20 seconds)
**What to show**: Application homepage/landing page

**Narration/Text**:
"Welcome to [Your App Name], a mentor-mentee platform that uses Google Calendar integration to automatically schedule sessions and generate Google Meet links. This demo shows our complete OAuth flow and Google Calendar integration."

---

### Scene 2: User Authentication (20-30 seconds)
**What to show**:
1. Navigate to sign-in page
2. Sign in as a mentor user
3. Navigate to mentor dashboard/profile

**Narration/Text**:
"First, I'll sign in as a mentor. Mentors can connect their Google Calendar to enable automatic meeting link generation for their mentorship sessions."

**Action**: Sign in with your test mentor account

---

### Scene 3: Navigate to Calendar Connection (15-20 seconds)
**What to show**:
1. Navigate to Expert Availability page (app/expert/availability)
2. Show the "Connect Google Calendar" button
3. Highlight why this integration is needed

**Narration/Text**:
"In the availability settings, mentors can connect their Google Calendar. This allows the platform to create calendar events and generate Google Meet links automatically when mentees book sessions."

**Action**: Click on the navigation to reach /expert/availability

---

### Scene 4: Initiate OAuth Flow (10-15 seconds)
**What to show**:
1. Click "Connect Google Calendar" button
2. Show the redirect happening

**Narration/Text**:
"When the mentor clicks 'Connect Google Calendar', they are redirected to Google's OAuth consent screen to grant the necessary permissions."

**Action**: Click the button that triggers `/api/auth/calendar-connect`

---

### Scene 5: OAuth Consent Screen - MOST CRITICAL (60-90 seconds)
**What to show**:
1. **PAUSE HERE - This is the most important part**
2. Google account selection screen (if appears)
3. Complete OAuth consent screen showing:
   - Your application name
   - Your application logo/icon
   - All requested scopes with descriptions
   - Language selector showing "English" (bottom-left)
   - Continue/Allow button

**CRITICAL REQUIREMENTS**:
- Show the ENTIRE consent screen without scrolling too fast
- Ensure language is set to English (check bottom-left corner)
- Make sure all scopes are visible:
  - "See, edit, share, and permanently delete all the calendars you can access using Google Calendar"
  - "View and edit events on all your calendars"
  - Your email address
  - Your basic profile info
- Read out or highlight each scope with text overlay

**Narration/Text**:
"Here is Google's OAuth consent screen. Notice the language is set to English at the bottom-left. The application requests the following permissions:

1. Full calendar access - to create calendar events
2. Calendar events permission - to add Google Meet links to events
3. Email and profile - to identify the user

These permissions allow our platform to automatically create calendar events with Google Meet links when mentees book sessions with this mentor. The mentor only needs to authenticate once."

**Action**:
1. Point out the language selector (bottom-left)
2. Slowly scroll through all scopes if needed
3. Click "Continue" or "Allow"

---

### Scene 6: OAuth Callback & Success (20-30 seconds)
**What to show**:
1. Redirect back to your application
2. Success message or indicator
3. Updated UI showing "Google Calendar Connected" status
4. Display any connection status badge/indicator

**Narration/Text**:
"After granting permissions, the user is redirected back to our application. The calendar connection is now active, as shown by the 'Connected' status indicator."

**Action**: Show the success state in the availability page

---

### Scene 7: Using the Calendar Integration - Part 1 (30-45 seconds)
**What to show**:
1. Navigate to a different user account (mentee/student)
2. Browse mentor profiles
3. Select the mentor who just connected their calendar
4. View the mentor's service/availability
5. Select a time slot to book

**Narration/Text**:
"Now let me demonstrate how the calendar integration works in practice. I'll sign in as a mentee and book a session with the mentor who just connected their Google Calendar."

**Action**:
1. Sign out from mentor account
2. Sign in as a mentee
3. Navigate to mentor profile/services (e.g., /mentor/[id]/service/[serviceId])
4. Select a time slot

---

### Scene 8: Using the Calendar Integration - Part 2 (45-60 seconds)
**What to show**:
1. Complete the booking process
2. Show the booking confirmation with Google Meet link
3. Optionally: Open Google Calendar to verify event was created
4. Show the calendar event with Google Meet link

**Narration/Text**:
"When I complete the booking, the platform automatically:
1. Creates a calendar event in the mentor's Google Calendar
2. Generates a Google Meet link for the session
3. Provides the Meet link to both mentor and mentee

Let me verify this in Google Calendar..."

**Action**:
1. Complete booking
2. Copy/show the generated Meet link
3. Open Google Calendar (https://calendar.google.com)
4. Show the created event with Meet link
5. Verify the event details match the booking

---

### Scene 9: Demonstrate Calendar Scope Usage (30-45 seconds)
**What to show**:
1. Click on the calendar event
2. Show event details including:
   - Event title
   - Start/end time
   - Attendees (mentor and mentee emails)
   - Google Meet link
3. Optionally: Click the Meet link to verify it works

**Narration/Text**:
"Here you can see the calendar event created by our application using the granted permissions. The event includes:
- Session title and description
- Scheduled time
- Attendee list with mentor and mentee
- Automatically generated Google Meet link

This demonstrates how our application uses the calendar and calendar.events scopes to provide seamless video conferencing for mentorship sessions."

**Action**: Navigate through the calendar event details

---

### Scene 10: Additional Functionality (Optional - 30 seconds)
**What to show**:
1. Navigate back to mentor account
2. Show calendar disconnect option
3. Demonstrate that mentor can manage their calendar connection

**Narration/Text**:
"Mentors can also disconnect their Google Calendar at any time from their availability settings. This revokes the OAuth token and stops the integration."

**Action**: Show disconnect button/option (don't actually disconnect if you need to keep the integration)

---

### Scene 11: Conclusion (15-20 seconds)
**What to show**: Summary screen or application dashboard

**Narration/Text**:
"This concludes the demonstration of our Google Calendar OAuth integration. The application uses Google Calendar API to create events and generate Meet links, making it easy for mentors and mentees to connect. Thank you for reviewing our submission."

---

## Recording Tips

### Before Recording
1. Clear browser cache and cookies
2. Sign out of all Google accounts
3. Prepare test accounts:
   - Mentor account (will connect Google Calendar)
   - Mentee account (will book a session)
   - Google account for OAuth (can be same as mentor account)
4. Set up screen recording software (recommendations below)
5. Test your microphone if doing voice narration
6. Close unnecessary browser tabs and applications

### Screen Recording Software
**Recommended options**:
- **Mac**: QuickTime Player (free), ScreenFlow, Camtasia
- **Windows**: OBS Studio (free), Camtasia, Snagit
- **Cross-platform**: OBS Studio, Loom, Screencast-O-Matic

### Recording Settings
- Resolution: 1920x1080 (1080p) minimum
- Frame rate: 30 fps
- Audio: Clear narration or plan to add text overlays
- Format: MP4 recommended for best compatibility

### During Recording
1. Speak clearly and at a moderate pace
2. Pause briefly on important screens (especially OAuth consent)
3. Use mouse cursor to highlight important elements
4. If you make a mistake, pause and restart that section
5. Keep browser window maximized
6. Zoom in on important text if needed

### After Recording
1. Review the entire video
2. Verify all required elements are visible
3. Check that consent screen shows all scopes in English
4. Add text overlays or annotations if needed
5. Edit out any mistakes or sensitive information
6. Trim any unnecessary content

---

## Video Editing Checklist

### Essential Edits
- [ ] Add intro title card with application name
- [ ] Add text overlays highlighting OAuth scopes on consent screen
- [ ] Add arrows or highlights pointing to:
  - Language selector (English)
  - Each requested scope
  - Calendar events with Meet links
- [ ] Add section transitions for clarity
- [ ] Add outro with summary

### Optional Enhancements
- [ ] Background music (keep volume low)
- [ ] Zoom effects on important elements
- [ ] Text captions for all narration
- [ ] Timestamps in video description
- [ ] Highlight cursor/clicks for clarity

---

## Publishing the Video

### YouTube Upload (Recommended)
1. Create/use YouTube account
2. Upload video
3. Set visibility to "Unlisted" (not Private)
4. Add descriptive title: "Google Calendar OAuth Integration Demo - [Your App Name]"
5. Add description with timestamps:
   ```
   Demo video for Google OAuth verification showing Google Calendar integration.

   Timestamps:
   0:00 - Introduction
   0:20 - User sign-in
   0:45 - Navigate to calendar settings
   1:00 - Initiate OAuth flow
   1:15 - OAuth consent screen (English)
   2:30 - OAuth callback and success
   3:00 - Book a mentorship session
   4:00 - Verify calendar event and Meet link
   4:45 - Conclusion

   Scopes requested:
   - https://www.googleapis.com/auth/calendar
   - https://www.googleapis.com/auth/calendar.events
   - email
   - profile
   ```
6. Add tags: oauth, google-calendar, google-meet, api-integration
7. Copy the video URL

### Alternative Hosting
- **Vimeo**: Good alternative, similar process
- **Google Drive**: Set sharing to "Anyone with the link"
- **Dropbox**: Generate public sharing link

**IMPORTANT**: Do NOT set video to "Private" - reviewers must be able to access it without authentication

---

## Google OAuth Verification Submission

### When Submitting
1. **Video URL Field**: Paste your YouTube/Vimeo URL
2. **Video URL**: Must be publicly accessible
3. **Verification form**: Ensure scopes match exactly what's shown in video
4. **Application description**: Mention the mentor-mentee platform and automatic Google Meet link generation

### Common Rejection Reasons (Avoid These!)
❌ Video link is private/inaccessible
❌ OAuth consent screen not shown or too brief
❌ Language not set to English on consent screen
❌ Scopes in video don't match scopes in submission
❌ Application functionality not clearly demonstrated
❌ Video quality too low or text not readable
❌ Different application shown in video vs. submission

### If Rejected
1. Review the rejection reason carefully
2. Re-record focusing on the specific issue
3. Resubmit with improved video
4. Response time: typically 3-5 business days

---

## Quick Reference: Key Endpoints to Show

### Your Application's OAuth Flow
1. **Start**: `/expert/availability` (Connect Calendar button)
2. **Initiate**: `/api/auth/calendar-connect` (generates OAuth URL)
3. **Google**: `https://accounts.google.com/o/oauth2/v2/auth` (consent screen)
4. **Callback**: `/api/auth/calendar-callback` (receives code, exchanges for tokens)
5. **Usage**: `/api/meetings/create` (creates events with Meet links)

### Test Scenario
```
User Type: Mentor
Action: Connect Google Calendar
OAuth Scopes: calendar, calendar.events, email, profile
Result: Mentor can now have auto-generated Meet links

User Type: Mentee
Action: Book session with mentor
Result: Calendar event created with Google Meet link
```

---

## Sample Time Allocation (Total: 4-5 minutes)

| Section | Duration | Critical? |
|---------|----------|-----------|
| Introduction | 15-20s | Medium |
| Sign in as mentor | 20-30s | Low |
| Navigate to calendar settings | 15-20s | Medium |
| Click connect button | 10-15s | Low |
| **OAuth consent screen** | **60-90s** | **CRITICAL** |
| OAuth callback | 20-30s | High |
| Switch to mentee account | 30-45s | Medium |
| Book a session | 45-60s | High |
| Verify calendar event | 30-45s | High |
| Show disconnect option | 30s | Low |
| Conclusion | 15-20s | Low |

**Total**: ~4-5 minutes

---

## Testing Your Video Before Submission

### Self-Review Checklist
Watch your video and verify:
- [ ] Can I clearly see the entire OAuth consent screen?
- [ ] Is "English" visible in the language selector?
- [ ] Are all 4 scopes visible and readable?
- [ ] Does the video show the application name I submitted?
- [ ] Can I see the calendar event being created?
- [ ] Is the Google Meet link visible and functional?
- [ ] Is the video link publicly accessible (test in incognito)?
- [ ] Is the audio clear or are text overlays readable?
- [ ] Is there any sensitive information visible (passwords, real user data)?

### Get Feedback
- [ ] Share video with a colleague to review
- [ ] Ask them to verify all checklist items
- [ ] Ensure non-technical people can understand the flow

---

## Troubleshooting

### Issue: OAuth consent screen appears too briefly
**Solution**: Add a pause in editing or re-record with slower pacing

### Issue: Scopes not fully visible
**Solution**: Zoom in during editing or use full-screen browser

### Issue: Language not in English
**Solution**:
1. Go to https://myaccount.google.com/language
2. Set display language to English
3. Re-record the OAuth flow

### Issue: Can't generate Meet link
**Solution**:
1. Verify scopes in calendar-connect/route.ts match submission
2. Ensure `conferenceDataVersion=1` is in Calendar API call
3. Check mentor has valid OAuth tokens

### Issue: Video file too large
**Solution**:
1. Compress video using HandBrake (free)
2. Use H.264 codec with medium quality
3. Or upload to YouTube and submit the link

---

## Final Checks Before Submission

### 24 Hours Before Submitting
- [ ] Record the video following this script
- [ ] Review the video carefully
- [ ] Upload to YouTube/Vimeo as unlisted
- [ ] Test the link in incognito/private browser
- [ ] Verify video is accessible without login
- [ ] Prepare OAuth verification form

### During Submission
- [ ] Copy exact video URL
- [ ] List exact scopes shown in video
- [ ] Match application name to video
- [ ] Provide clear application description
- [ ] Include justification for sensitive scopes

### After Submission
- [ ] Do NOT delete or change video visibility
- [ ] Do NOT modify OAuth scopes in Google Console
- [ ] Keep application in same state as video
- [ ] Monitor email for verification updates
- [ ] Expected response time: 3-5 business days

---

## Additional Resources

### Google Documentation
- [OAuth 2.0 Verification](https://support.google.com/cloud/answer/9110914)
- [OAuth Consent Screen](https://support.google.com/cloud/answer/10311615)
- [Google Calendar API](https://developers.google.com/calendar/api/guides/overview)

### Your Application Documentation
- See: `/README-GOOGLE-CALENDAR.md` for technical details
- OAuth routes: `/app/api/auth/calendar-*`
- Meeting creation: `/app/api/meetings/create/route.ts`

---

## Contact for Questions

If you encounter issues during recording or have questions about the OAuth flow:
1. Review the code in `app/api/auth/calendar-connect/route.ts`
2. Check `README-GOOGLE-CALENDAR.md` for technical details
3. Test the complete flow in development before recording
4. Ensure all environment variables are set correctly

---

## Success Criteria Summary

Your demo video MUST show:
✅ Complete OAuth flow from start to finish
✅ Full consent screen with all scopes in English
✅ Application using the granted Calendar API permissions
✅ Calendar events being created with Google Meet links
✅ Clear demonstration of the mentor-mentee booking flow

Your demo video should be:
✅ 3-5 minutes in duration
✅ High quality (1080p recommended)
✅ Publicly accessible (unlisted YouTube link)
✅ Well-narrated or with clear text overlays
✅ Showing your actual application (matching submission)

---

Good luck with your OAuth verification! This comprehensive guide should help you create a video that meets all of Google's requirements on the first submission.
